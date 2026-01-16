import Foundation
import SwiftHTMLtoMarkdown
import SwiftSoup

enum Parser {
    // MARK: - Main page to extract vineyards

    static func parseMainPage(html: String) throws -> [BaseVineyard] {
        let doc = try SwiftSoup.parse(html)
        let items = try doc.select("div.news-area.block div.items div.item")

        return items.compactMap { try? extractVineyard(from: $0) }
    }

    private static func extractVineyard(from element: Element) throws -> BaseVineyard? {
        guard let link = try? element.select("a").first(),
              let slug = try? link.attr("href"),
              let name = try? link.text()
        else {
            print("⚠️  Failed to extract vineyard from element: \(element)")
            return nil
        }

        return BaseVineyard(slug: slug)
    }

    // MARK: - Vineyard page to extract regions and appellations

    static func parseVineyardPage(html: String) throws -> PartialVineyard {
        let doc = try SwiftSoup.parse(html)

        let vineyardNameBlock = try doc.select("h2.block-title")
        let vineyardName = try vineyardNameBlock.select("strong").text()

        let divs = try doc.select("div#fiche-region-area")
        let regions = try divs.compactMap { try extractRegion(from: $0) }

        return PartialVineyard(
            name: vineyardName,
            regions: regions
        )
    }

    private static func extractRegion(from element: Element) throws -> PartialRegion {
        let regionName = try element.select("div.title").text()
        let links = try element.select("a[href*=/tout-sur-le-vin/appellations-vins/]")

        let appellations = links.compactMap { try? extractAppellations(from: $0) }

        return PartialRegion(
            name: cleanHTMLEntities(regionName),
            appellations: appellations
        )
    }

    private static func extractAppellations(from link: Element) throws -> PartialAppellation {
        let appellationName = try link.text()
        let slug = try link.attr("href")

        return PartialAppellation(
            name: cleanHTMLEntities(appellationName),
            slug: slug
        )
    }

    // MARK: - Appellation page to extract details

    static func parseAppellationPage(html: String, appellationName: String) throws -> Appellation {
        let doc = try SwiftSoup.parse(html)

        let colorIcons = try doc.select("i.icon")
        let colors = colorIcons.compactMap { try? parseColor(from: $0) }

        let cepages = try parseCepages(from: doc)
        let drinkingWindow = try parseDrinkingWindow(from: doc)
        let description = try parseAppellationDescription(from: doc)

        return Appellation(
            name: appellationName,
            description: description,
            colors: colors,
            mainGrapeVarieties: cepages,
            rawWindow: drinkingWindow
        )
    }

    static func parseColor(from htmlIcon: Element) throws -> WineColor? {
        let iconClasses = try htmlIcon.classNames()
        return iconClasses.compactMap { WineColor(className: $0) }.first
    }

    static func parseCepages(from element: Element) throws -> [GrapeVariety] {
        let cepageBlock = try element.select("div.meta.last")
        let cepageLinks = try cepageBlock.select("a")
        return cepageLinks.compactMap { link in
            guard let name = try? link.text() else { return nil }

            return GrapeVariety(name: cleanHTMLEntities(name), description: "")
        }
    }

    static func parseDrinkingWindow(from element: Element) throws -> String {
        let descriptionsBlocks = try element.select("div.meta")
        let drinkingWindowBlock = try descriptionsBlocks.first { try $0.text().contains("POTENTIEL DE GARDE") }
        let drinkingWindow = try drinkingWindowBlock?.select("div.address").text()

        if let drinkingWindow {
            return cleanHTMLEntities(drinkingWindow)
        }
        return "Non spécifié"
    }

    static func parseAppellationDescription(from element: Element) throws -> String {
        let descriptionBlock = try element.select("div.description")
        let rawHtmlDescription = try descriptionBlock.html()
        var document = BasicHTML(rawHTML: rawHtmlDescription)
        try document.parse()

        let markdownifiedDescription = try document.asMarkdown()
        return cleanHTMLEntities(markdownifiedDescription)
    }

    // MARK: - Cepage page to extract details

    static func parseGrapeVarietyPage(html: String, grapeVarietyName: String) throws -> GrapeVariety {
        let doc = try SwiftSoup.parse(html)

        let descriptionBlock = try parseGrapeVarietyDescription(from: doc, name: grapeVarietyName)

        return GrapeVariety(
            name: grapeVarietyName,
            description: descriptionBlock
        )
    }

    private static func parseGrapeVarietyDescription(from element: Element, name: String) throws -> String {
        let maybeContent = try element.select("div.content")
        let markdownifiedDescription = if let content = maybeContent.first() {
            try parseGrapeVarietyDedicatedPageContent(from: content, name: name)
        } else {
            try parseGrapeVarietyRegistryContent(from: element, name: name)
        }

        return cleanHTMLEntities(markdownifiedDescription)
    }

    private static func parseGrapeVarietyDedicatedPageContent(from element: Element, name: String) throws -> String {
        let contentElements = try element.select("div.item")

        let matchingContent = try contentElements.first {
            let title = try $0.select("div.title").text().lowercased()
            return title.contains(name.lowercased())
        }

        let firstDescriptionParagraph = try matchingContent?.select("div.description").first()
        guard let contentElements = firstDescriptionParagraph else {
            throw ScrapperError.noData
        }

        let rawHtml = try firstDescriptionParagraph?.html()
        guard let rawHtml else {
            throw ScrapperError.noData
        }

        var document = BasicHTML(rawHTML: rawHtml)
        try document.parse()
        return try document.asMarkdown()
    }

    private static func parseGrapeVarietyRegistryContent(from element: Element, name _: String) throws -> String {
        let allItems = try element.select("div.registry-content")
        let rawHtml = try allItems.html()
        var document = BasicHTML(rawHTML: rawHtml)
        try document.parse()
        return try document.asMarkdown()
    }

    // MARK: - Helpers

    static func cleanHTMLEntities(_ text: String) -> String {
        text.replacingOccurrences(of: "&eacute;", with: "é")
            .replacingOccurrences(of: "&egrave;", with: "è")
            .replacingOccurrences(of: "&agrave;", with: "à")
            .replacingOccurrences(of: "&ocirc;", with: "ô")
            .replacingOccurrences(of: "&icirc;", with: "î")
            .replacingOccurrences(of: "&ucirc;", with: "û")
            .replacingOccurrences(of: "&ccedil;", with: "ç")
            .replacingOccurrences(of: "&euml;", with: "ë")
            .replacingOccurrences(of: "&iuml;", with: "ï")
            .replacingOccurrences(of: "&ouml;", with: "ö")
            .replacingOccurrences(of: "&uuml;", with: "ü")
            .replacingOccurrences(of: "&acirc;", with: "â")
            .replacingOccurrences(of: "&#039;", with: "'")
            .trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

private extension WineColor {
    init?(className: String) {
        switch className.lowercased() {
            case "icon-wine-rouge-tranquille": self = .red
            case "icon-wine-blanc-tranquille": self = .white
            case "icon-wine-rose-tranquille", "icon-wine-rosé-tranquille": self = .rosé
            case "icon icon-wine-blanc-effervescent": self = .whiteSparkling
            case "icon icon-wine-rose-effervescent", "icon icon-wine-rosé-effervescent": self = .roséSparkling
            case "icon icon-wine-rouge-effervescent": self = .redSparkling
            default: return nil
        }
    }
}
