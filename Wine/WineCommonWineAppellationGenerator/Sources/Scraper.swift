import Foundation

enum ScrapperError: Error {
    case wrongUrl
    case noData
    case other(any Error)

    init(from other: any Error) {
        self = .other(other)
    }
}

enum Scraper {
    static let baseUrl = "https://www.hachette-vins.com"

    static func scrapeMainPage(url mainURL: String) async throws -> String {
        let cacheKey = "main_page"

        if let cachedHTML = try Cache.getCachedHTML(for: cacheKey) {
            return cachedHTML
        }

        guard let url = URL(string: mainURL) else {
            throw ScrapperError.wrongUrl
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let html = String(data: data, encoding: .utf8) else {
                throw ScrapperError.noData
            }

            try Cache.cacheHTML(html, for: cacheKey)

            return html
        } catch {
            throw ScrapperError.other(error)
        }
    }

    static func scrapeVineyard(slug: String) async throws -> PartialVineyard {
        let cacheKey = "vineyard_\(slug)"

        if let cachedHTML = try Cache.getCachedHTML(for: cacheKey) {
            return try Parser.parseVineyardPage(html: cachedHTML)
        }

        let urlString = "\(Scraper.baseUrl)\(slug)"

        guard let url = URL(string: urlString) else {
            throw ScrapperError.wrongUrl
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let html = String(data: data, encoding: .utf8) else {
                throw ScrapperError.noData
            }

            try Cache.cacheHTML(html, for: cacheKey)

            return try Parser.parseVineyardPage(html: html)
        } catch {
            throw ScrapperError.other(error)
        }
    }

    static func scrapeAppellation(name: String, slug: String) async throws -> Appellation {
        let cacheKey = "appellation_\(slug)"

        if let cachedHTML = try Cache.getCachedHTML(for: cacheKey) {
            return try Parser.parseAppellationPage(html: cachedHTML, appellationName: name)
        }

        let urlString = "\(Scraper.baseUrl)\(slug)"

        guard let url = URL(string: urlString) else {
            throw ScrapperError.wrongUrl
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let html = String(data: data, encoding: .utf8) else {
                throw ScrapperError.noData
            }

            try Cache.cacheHTML(html, for: cacheKey)

            return try Parser.parseAppellationPage(html: html, appellationName: name)
        } catch {
            throw ScrapperError.other(error)
        }
    }

    static func scrapeGrapeVariety(name: String, slug: String) async throws -> GrapeVariety {
        let cacheKey = "grape_\(slug)"

        if let cachedHTML = try Cache.getCachedHTML(for: cacheKey) {
            return try Parser.parseGrapeVarietyPage(html: cachedHTML, grapeVarietyName: name)
        }

        let urlString = "\(Scraper.baseUrl)\(slug)"

        guard let url = URL(string: urlString) else {
            throw ScrapperError.wrongUrl
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let html = String(data: data, encoding: .utf8) else {
                throw ScrapperError.noData
            }

            try Cache.cacheHTML(html, for: cacheKey)

            return try Parser.parseGrapeVarietyPage(html: html, grapeVarietyName: name)
        } catch {
            throw ScrapperError.other(error)
        }
    }
}
