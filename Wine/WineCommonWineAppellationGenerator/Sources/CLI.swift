import Foundation

// MARK: - Command-Line Interface

enum CLI {
    /// Parse command-line arguments for workspace path and help flag
    static func parseArguments(_ arguments: [String]) -> (workspacePath: String?, showHelp: Bool) {
        var workspacePath: String?
        var showHelp = false

        for arg in arguments {
            switch arg {
                case "--help", "-h":
                    showHelp = true
                default:
                    if workspacePath == nil, !arg.hasPrefix("--") {
                        workspacePath = arg
                    }
            }
        }

        return (workspacePath, showHelp)
    }

    /// Display help/usage information
    static func printUsage() {
        tell("Usage: WineAppellationGenerator <workspace-path> [options]", level: .info)
        tell("", level: .info)
        tell("Arguments:", level: .info)
        tell("  <workspace-path>     Path to the workspace root directory", level: .info)
        tell("", level: .info)
        tell("Options:", level: .info)
        tell("  --clear-cache        Clear the cache and exit", level: .info)
        tell("  --cache-stats        Display cache statistics and exit", level: .info)
        tell("  -h, --help           Show this help message", level: .info)
        tell("", level: .info)
        tell("Examples:", level: .info)
        tell("  WineAppellationGenerator /Users/username/Documents/CentralDispatch", level: .info)
        tell("  WineAppellationGenerator --clear-cache", level: .info)
        tell("  WineAppellationGenerator --cache-stats", level: .info)
    }
}

// MARK: - Logging

enum TellLevel {
    case debug
    case info
    case warning
    case error
}

var lastLevel: TellLevel?

func tell(_ message: String, level: TellLevel = .debug) {
    let emoji = switch level {
        case .debug: " "
        case .info: "ℹ️"
        case .warning: "⚠️"
        case .error: "❌"
    }

    if lastLevel == level {
        print("   \(message)")
    } else {
        lastLevel = level
        print("\(emoji) \(message)")
    }
}
