import Foundation
import SwiftHTMLtoMarkdown
import SwiftSoup

enum ParserError: Error {
    case missingDescription
    case missingTabSection
    case missingTabContent
    case missingRegionSection
    case missingRegionItem
    case missingAppellationProductBlock
    case missingAppellationMeta
    case missingAppellationDescription
    case missingH1
    case missingGrapeVarietyBlock
    case missingGrapeVarietyTitle
    case missingGrapeVarietyColor
    case missingGrapeVarietyName
    case missingGrapeVarietyContent
    case missingGrapeVarietyRegistry
    case missingGrapeVarietyDescription
    case missingGrapeVarietyMatch
    case missingGrapeVarietyColorParse
    case unknownGrapeVariety(name: String)
    case other(String)
}

enum Parser {
    // MARK: - Main page to extract vineyards

    static func parseMainPage(html: String) throws -> [BaseVineyard] {
        let doc = try SwiftSoup.parse(html)
        let items = try doc.select("div.news-area.block div.items div.item")

        return items.compactMap { try? extractVineyard(from: $0) }
    }

    private static func extractVineyard(from element: Element) throws -> BaseVineyard? {
        guard let link = try? element.select("a").first(),
              let slug = try? link.attr("href")
        else {
            print("⚠️  Failed to extract vineyard from element: \(element)")
            return nil
        }

        return BaseVineyard(slug: slug)
    }

    // MARK: - Vineyard page to extract regions and appellations

    static func parseVineyardPage(html: String) throws -> PartialVineyard {
        let doc = try SwiftSoup.parse(html)

        let cleanedName = try parseH1(from: doc)

        let descriptionBlock = try doc.select("div.description p").first()
        guard let description = try descriptionBlock?.text() else {
            throw ParserError.missingDescription
        }

        let cleanedDescription = description.cleaned().keepReadable()

        let tabSectionBlock = try doc.select("div.tab-area").first()
        guard let tabBlock = try tabSectionBlock?.select("div.tab-content") else {
            throw ParserError.missingTabSection
        }

        let historyBlock = try tabBlock.select("div.tab-2").first()
        let markdownifiedHistory = try extractTabContent(from: historyBlock)
        let soilAndClimateBlock = try tabBlock.select("div.tab-3").first()
        let markdownifiedSoilAndClimate = try extractTabContent(from: soilAndClimateBlock)

        let regionSectionBlock = try doc.select("div#fiche-region-area").first()
        guard let regionBlock = try regionSectionBlock?.select("div.item") else {
            throw ParserError.missingRegionSection
        }

        let regions = try regionBlock.compactMap { try extractRegion(from: $0) }

        return PartialVineyard(
            name: cleanedName,
            description: cleanedDescription,
            soilAndClimate: markdownifiedSoilAndClimate,
            history: markdownifiedHistory,
            regions: regions
        )
    }

    private static func extractTabContent(from tabContent: Element?) throws -> String {
        let fullBlock = try tabContent?.select("div.full").first()
        let halfBlock = try tabContent?.select("div.half").first()
        guard let block = fullBlock ?? halfBlock else {
            throw ParserError.missingTabContent
        }

        for link in try block.select("a") {
            try link.unwrap()
        }
        var document = try BasicHTML(rawHTML: block.html())
        try document.parse()

        return try document
            .asMarkdown()
            .densified()
            .cleaned()
    }

    private static func extractRegion(from element: Element) throws -> PartialRegion {
        let regionName = try element.select("div.title").text()
        let cleanedRegionName = regionName.cleaned().capitalizeWineRelatedNames()
        let links = try element.select("a[href*=/tout-sur-le-vin/appellations-vins/]")

        let appellations = links.compactMap { try? extractAppellations(from: $0) }

        return PartialRegion(
            name: cleanedRegionName,
            appellations: appellations
        )
    }

    private static func extractAppellations(from link: Element) throws -> PartialAppellation {
        let appellationName = try link.text()
        let slug = try link.attr("href")

        return PartialAppellation(
            name: appellationName.cleaned(),
            slug: slug
        )
    }

    // MARK: - Appellation page to extract details

    static func parseAppellationPage(html: String, appellationName _: String) throws -> AlmostAppellation {
        let doc = try SwiftSoup.parse(html)

        let rawName = try parseH1(from: doc)
        let name = rawName.split(separator: "/").last.map(String.init) ?? rawName
        let isAppellationIgp = rawName.lowercased().contains("igp ")
        let cleanedName = if isAppellationIgp {
            name.cleaned().capitalizeWineRelatedNames().replacingOccurrences(of: "IGP ", with: "")
        } else {
            name.cleaned().capitalizeWineRelatedNames()
        }

        let colorIcons = try doc.select("i[class*='icon-wine']")
        let colors = colorIcons.compactMap { try? parseColor(from: $0) }
        let uniqueColors = Array(Set(colors))

        guard let productBlock = try doc.select("div.product-area.block").first() else {
            throw ParserError.missingAppellationProductBlock
        }

        let metaBlocks = try productBlock.select("div.meta")
        let grapeVarieties = try metaBlocks.first { try $0.text().contains("PRINCIPAUX CÉPAGES") }.map(parseCepages(from:))
        let rawDrinkingWindow = try metaBlocks.first { try $0.text().contains("POTENTIEL DE GARDE") }.map(parseDrinkingWindow(from:))
        let drinkingWindow = rawDrinkingWindow?
            .replacingOccurrences(of: ".", with: ".\\n")
            .trimmingCharacters(in: .whitespacesAndNewlines)
        let description = try parseAppellationDescription(from: doc)

        return AlmostAppellation(
            name: cleanedName,
            description: description,
            colors: uniqueColors,
            mainGrapeVarieties: grapeVarieties ?? [],
            type: isAppellationIgp ? .igp : .aoc,
            rawWindow: drinkingWindow ?? ""
        )
    }

    static func parseH1(from doc: Element) throws -> String {
        let nameBlock = try doc.select("h1.main-title.no-icon").first()
        try nameBlock?.select("strong").remove()
        guard let name = try nameBlock?.text() else {
            throw ParserError.missingH1
        }

        return name.cleaned().capitalizeWineRelatedNames()
    }

    static func parseColor(from htmlIcon: Element) throws -> WineColor? {
        let iconClasses = try htmlIcon.classNames()
        return iconClasses.compactMap { WineColor(className: $0) }.first
    }

    static func parseCepages(from cepageBlock: Element) throws -> [PartialGrapeVariety] {
        let cepageLinks = try cepageBlock.select("a")
        return try cepageLinks.compactMap { link in
            let name = try link.text().components(separatedBy: ":").first?.trim()
            let link = try link.attr("href")

            guard let name, !name.isEmpty else { return nil }
            guard !link.contains("tourisme") else { return nil }

            let slug = link.replacingOccurrences(of: Scraper.baseUrl, with: "")

            return PartialGrapeVariety(name: name.cleaned(), slug: slug)
        }
    }

    static func parseDrinkingWindow(from drinkingWindowBlock: Element) throws -> String {
        let drinkingWindow = try drinkingWindowBlock.select("div.address").text()

        if !drinkingWindow.isEmpty {
            return drinkingWindow.cleaned()
        }
        return ""
    }

    static func parseAppellationDescription(from element: Element) throws -> String {
        guard let descriptionBlock = try element.select("div.description").first() else {
            throw ParserError.missingAppellationDescription
        }

        for link in try descriptionBlock.select("a") {
            try link.unwrap()
        }

        var document = try BasicHTML(rawHTML: descriptionBlock.html())
        try document.parse()

        return try document
            .asMarkdown()
            .densified()
            .cleaned()
    }

    // MARK: - Cepage page to extract details

    private static func parseGrapeVarietyNameWithSynonym(from titleRaw: String) throws -> (String, String?) {
        let synonymRegex = /\((.*?)\)/
        var synonym: String?
        if let match = titleRaw.firstMatch(of: synonymRegex) {
            synonym = String(match.output.1).cleaned()
        }

        let titleWithoutSynonym = titleRaw.replacing(synonymRegex, with: "").cleaned()

        guard let nameWithColor = titleWithoutSynonym.components(separatedBy: ":").first?.trim(),
              let name = nameWithColor.components(separatedBy: "- ").first?.trim()
        else {
            throw ParserError.missingGrapeVarietyName
        }

        return (name, synonym)
    }

    private static func parseGrapeVarietyColor(from titleRaw: String) throws -> GrapeVarietyColor? {
        guard let titleRest = titleRaw.components(separatedBy: "-").last,
              let grapeVarietyColorRaw = titleRest.components(separatedBy: ":").first?.trim(),
              let rawColor = grapeVarietyColorRaw.components(separatedBy: " ").last
        else {
            throw ParserError.missingGrapeVarietyColorParse
        }

        return switch rawColor.lowercased() {
            case "noir", "rouge": .black
            case "blanc": .white
            case "rose", "rosé": .pink
            case "gris": .grey
            default: nil
        }
    }

    private static func parseGrapeVarietyDedicatedPageDescription(from contentBlock: Element) throws -> String {
        try contentBlock.select("div.block.no-border").first()?.remove()
        try contentBlock.select(":not(h2):not(p)").remove()

        let children = contentBlock.children()
        var foundEmpty = false
        for child in children {
            if foundEmpty {
                try child.remove()
                continue
            }
            let text = try child.text().trimmingCharacters(in: .whitespacesAndNewlines)
            if text.isEmpty {
                foundEmpty = true
                try child.remove()
            }
        }

        for link in try contentBlock.select("a") {
            try link.unwrap()
        }

        var document = try BasicHTML(rawHTML: contentBlock.html())
        try document.parse()

        return try document
            .asMarkdown()
            .densified()
            .cleaned()
    }

    static func parseGrapeVarietyDedicatedPage(html: String) throws -> GrapeVarietyDetails {
        let dedicatedPage = try SwiftSoup.parse(html)

        guard let titleRaw = try dedicatedPage.select("h1.main-title.no-icon").first(), let titleRaw = try? titleRaw.text() else {
            throw ParserError.missingGrapeVarietyTitle
        }
        guard let name = titleRaw.components(separatedBy: " - ").first else {
            throw ParserError.missingGrapeVarietyBlock
        }
        guard let contentBlock = try dedicatedPage.select("section.main-area.wrapper div.content").first() else {
            throw ParserError.missingGrapeVarietyContent
        }

        let markdownifiedDescription = try parseGrapeVarietyDedicatedPageDescription(from: contentBlock)

        let maybeColor = try parseGrapeVarietyColor(from: titleRaw)
            ?? GrapeVarietyColor(text: contentBlock.text())
        guard let color = maybeColor else {
            throw ParserError.missingGrapeVarietyColor
        }

        return GrapeVarietyDetails(
            name: name.cleaned().capitalizeWineRelatedNames(),
            description: markdownifiedDescription,
            color: color
        )
    }

    static let grapeVarietiesWithoutDescription = ["MUSCAT ROSE À PETITS GRAINS", "MÉRILLE"].map { $0.lowercased() }

    static func parseGrapeVarietiesRegistry(html: String) throws -> [AlmostGrapeVariety] {
        let doc = try SwiftSoup.parse(html)
        guard let mainBlock = try doc.select("div#vins").first() else {
            throw ParserError.missingGrapeVarietyRegistry
        }

        let allItems = try mainBlock.select("div.item")
        return try allItems.map { try parseGrapeVarietyRegistryContent(from: $0) }
    }

    private static func parseGrapeVarietyRegistryContent(from element: Element) throws -> AlmostGrapeVariety {
        let rawName = try element.select("div.title").text().cleaned()
        let (name, titleSynonym) = try parseGrapeVarietyNameWithSynonym(from: rawName)
        let titleColor = try parseGrapeVarietyColor(from: rawName)

        let isExemptedFromDescription = grapeVarietiesWithoutDescription.contains(name.lowercased())
        let descriptionBlock = try element.select("div.description").first()
        guard descriptionBlock != nil || isExemptedFromDescription else {
            throw ParserError.missingGrapeVarietyDescription
        }

        var dedicatedPageSlug: String?
        let dedicatedPageLink = try descriptionBlock?.select("a").first()
        if let dedicatedPageLink {
            dedicatedPageSlug = try dedicatedPageLink.attr("href").replacingOccurrences(of: Scraper.baseUrl, with: "")
        }
        try dedicatedPageLink?.remove()

        let description = try descriptionBlock?.text().cleaned().keepReadable()
        let fallbackColor: GrapeVarietyColor? = switch try element.select(".icon").first()?.classNames().contains("icon-grape1") {
            case true: GrapeVarietyColor.black
            case false: GrapeVarietyColor.white
            case nil: nil
        }

        var synonyms: [String] = [titleSynonym?.capitalizeWineRelatedNames().cleaned()].compactMap(\.self)
        let synonymBlock = try element.select("div.description").last()
        if let synonymBlock, synonymBlock != descriptionBlock, try synonymBlock.text().contains("Synonyme") {
            let synonymMatches = try? synonymBlock.select("a").map { try $0.text().capitalizeWineRelatedNames().cleaned() }
            synonyms.append(contentsOf: synonymMatches ?? [])
        }

        let color: GrapeVarietyColor? = titleColor
            ?? description.map(GrapeVarietyColor.init(text:))
            ?? GrapeVarietyColor(text: name)
        guard let color = color ?? fallbackColor else {
            throw ParserError.missingGrapeVarietyColor
        }

        return AlmostGrapeVariety(
            name: name.cleaned().capitalizeWineRelatedNames(),
            description: description ?? "",
            color: color,
            synonyms: synonyms,
            dedicatedPageSlug: dedicatedPageSlug
        )
    }
}

// MARK: - Helpers

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

private extension GrapeVarietyColor {
    init?(text: String) {
        let text = text.lowercased()
        switch text {
            case text where text.contains("noir") || text.contains("rouge"): self = .black
            case text where text.contains("blanc"): self = .white
            case text where text.contains("gris"): self = .grey
            case text where text.contains("rose") || text.contains("rosé"): self = .pink
            default: return nil
        }
    }
}

private let wordsToLeaveInLowercase = [
    "de", "du", "la", "le", "les", "des", "et", "à", "au", "aux", "sur", "en", "pour", "par", "avec", "sans", "sous", "chez", "l'", "d'"
]

private let wordsToUppercase = [
    "IGP"
]

private extension String {
    func capitalize(by separators: [Character]) -> String {
        var wordsAndSeparators = [String]()
        var currentWord = ""
        for char in self {
            if separators.contains(char) {
                if !currentWord.isEmpty {
                    wordsAndSeparators.append(currentWord)
                    currentWord = ""
                }
                wordsAndSeparators.append(String(char))
            } else {
                currentWord.append(char)
            }
        }
        if !currentWord.isEmpty {
            wordsAndSeparators.append(currentWord)
        }
        let capitalizedWordsAndSeparators = wordsAndSeparators.map { part -> String in
            if part.count == 1, let first = part.first, separators.contains(first) {
                return part
            } else {
                if wordsToLeaveInLowercase.contains(part.lowercased()) {
                    return part.lowercased()
                } else if wordsToUppercase.contains(part.uppercased()) {
                    return part.uppercased()
                } else {
                    return part.prefix(1).uppercased() + part.dropFirst().lowercased()
                }
            }
        }
        return capitalizedWordsAndSeparators.joined()
    }

    func capitalizeWineRelatedNames() -> String {
        return lowercased()
            .capitalize(by: [" ", "-", "’", "'"])
    }

    func keepReadable() -> String {
        replacingOccurrences(of: "\n", with: " ")
            .replacingOccurrences(of: "\t", with: " ")
            .replacingOccurrences(of: ".", with: ". ")
            .replacingOccurrences(of: "  ", with: " ")
            .trimmingCharacters(in: .whitespacesAndNewlines)
    }

    func cleaned() -> String {
        trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "\"", with: "&#34")
            .replacingOccurrences(of: ".#", with: ".\n\n#")
            .replacingOccurrences(of: "\n", with: "\\n")
            .replacingOccurrences(of: ". . . ", with: "&hellip;")
            .replacingOccurrences(of: "…", with: "&hellip;")
    }

    func densified() -> String {
        return replacing(/\n{2,}/, with: "\n\n")
    }
}
