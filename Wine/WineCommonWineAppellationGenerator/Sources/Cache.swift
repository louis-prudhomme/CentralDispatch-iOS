import Foundation

enum CacheError: Error {
    case invalidCacheDirectory
    case encodingFailed
    case decodingFailed
}

// MARK: - Command-Line Options

struct CacheOptions {
    var clearCache = false
    var showStats = false
}

enum Cache {
    private static let cacheDirectoryName = ".cellar-door-cache"
    private static var cacheURL: URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
            // swiftlint:disable:next force_unwrapping
            .first!
            .appendingPathComponent(cacheDirectoryName)
    }

    // MARK: - Command-Line Handling

    /// Parse cache-related command-line arguments
    static func parseArguments(_ arguments: [String]) -> (options: CacheOptions, remainingArgs: [String]) {
        var options = CacheOptions()
        var remainingArgs = [String]()

        for arg in arguments {
            switch arg {
                case "--clear-cache":
                    options.clearCache = true
                case "--cache-stats":
                    options.showStats = true
                default:
                    remainingArgs.append(arg)
            }
        }

        return (options, remainingArgs)
    }

    static func handleCacheOperation(_ options: CacheOptions) {
        if options.clearCache {
            do {
                try clearCache()
                tell("Cache cleared successfully", level: .info)
            } catch {
                tell("Failed to clear cache: \(error)", level: .error)
                fatalError("Failed to clear cache: \(error)")
            }
        }

        if options.showStats {
            do {
                let stats = try getCacheStats()
                tell("Cache statistics:", level: .info)
                tell("  Files: \(stats.fileCount)", level: .info)
                tell("  Total size: \(stats.totalSize)", level: .info)
            } catch {
                tell("Failed to get cache stats: \(error)", level: .error)
                fatalError("Failed to get cache stats: \(error)")
            }
        }
    }

    // MARK: - Cache Directory Management

    static func getCacheDirectory() throws -> URL {
        if !FileManager.default.fileExists(atPath: cacheURL.path) {
            try FileManager.default.createDirectory(at: cacheURL, withIntermediateDirectories: true)
            tell("Created cache directory at: \(cacheURL.path)", level: .debug)
        }

        return cacheURL
    }

    // MARK: - HTML Caching

    static func getCachedHTML(for key: String) throws -> String? {
        let cacheURL = try getCacheDirectory()
        let fileName = sanitizeFileName(key) + ".html"
        let fileURL = cacheURL.appendingPathComponent(fileName)

        guard FileManager.default.fileExists(atPath: fileURL.path) else {
            return nil
        }

        do {
            let html = try String(contentsOf: fileURL, encoding: .utf8)
            tell("Cache hit for: \(key)", level: .debug)
            return html
        } catch {
            tell("Failed to read cache for: \(key)", level: .warning)
            return nil
        }
    }

    static func cacheHTML(_ html: String, for key: String) throws {
        let cacheURL = try getCacheDirectory()
        let fileName = sanitizeFileName(key) + ".html"
        let fileURL = cacheURL.appendingPathComponent(fileName)

        do {
            try html.write(to: fileURL, atomically: true, encoding: .utf8)
            tell("Cached HTML for: \(key)", level: .debug)
        } catch {
            tell("Failed to cache HTML for: \(key)", level: .warning)
            // Don't throw - caching failure shouldn't stop the process
        }
    }

    // MARK: - Utilities

    private static func sanitizeFileName(_ key: String) -> String {
        // Replace invalid characters with underscores
        let invalidCharacters = CharacterSet(charactersIn: ":/\\?%*|\"<>")
        return key.components(separatedBy: invalidCharacters).joined(separator: "_")
    }

    static func clearCache() throws {
        guard let cacheURL = try? getCacheDirectory() else { return }

        if FileManager.default.fileExists(atPath: cacheURL.path) {
            try FileManager.default.removeItem(at: cacheURL)
            tell("Cache cleared", level: .info)
        }
    }

    static func getCacheStats() throws -> (fileCount: Int, totalSize: String) {
        guard let cacheURL = try? getCacheDirectory() else {
            return (0, "0 KB")
        }

        let files = try FileManager.default.contentsOfDirectory(at: cacheURL, includingPropertiesForKeys: [.fileSizeKey])
        let totalBytes = files.reduce(0) { total, url in
            let size = (try? url.resourceValues(forKeys: [.fileSizeKey]))?.fileSize ?? 0
            return total + size
        }

        let sizeInKB = Double(totalBytes) / 1_024.0
        let sizeString = if sizeInKB < 1_024 {
            String(format: "%.2f KB", sizeInKB)
        } else {
            String(format: "%.2f MB", sizeInKB / 1_024.0)
        }

        return (files.count, sizeString)
    }
}
