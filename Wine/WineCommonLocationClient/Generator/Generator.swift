import Foundation
import WineCommonLocationClientShared

@main
enum LocationClientGenerator {
    static let sharedCommonModelContainerPath = "../../Shared/SharedCommonModelContainer/Sources/DefaultWineCountries.generated.swift"

    static func main() async {
        print("🚀 Fetching wine-producing countries from GeoNames API...")

        let result = await fetchAllCountriesFromAPI(countryBias: Array(wineProducerCountryCodes))

        switch result {
            case let .success(allCountries):
                let wineCountries = filterWineProducingCountries(allCountries)
                let uniqueWineCountries = wineCountries.unique(by: \.code)
                guard !wineCountries.isEmpty else {
                    print("❌ Failed to retreive any country")
                    exit(1)
                }

                print("✅ Retrieved \(wineCountries.count) wine-producing countries")

                let swiftCode = generateSwiftFile(from: wineCountries)

                let url = URL(fileURLWithPath: sharedCommonModelContainerPath)
                let directory = url.deletingLastPathComponent()

                do {
                    try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
                    try swiftCode.write(to: url, atomically: true, encoding: .utf8)
                    let wineCountryCodes = wineCountries.map(\.code).joined(separator: ", ")
                    print("✅ Generated file: \(sharedCommonModelContainerPath)")
                    print("   Countries included: \(wineCountryCodes)")
                } catch {
                    print("❌ Failed to write file: \(error)")
                    exit(1)
                }

            case let .failure(error):
                print("❌ Failed to fetch countries: \(error)")
                exit(1)
        }
    }

    static let wineProducerCountryCodes: Set<String> = [
        "FR", // France
        "IT", // Italy
        "ES", // Spain
        "US", // United States
        "AR", // Argentina
        "AU", // Australia
        "CL", // Chile
        "DE", // Germany
        "NZ", // New Zealand
        "PT", // Portugal
        "ZA" // South Africa
    ]

    static func filterWineProducingCountries(_ countries: [LocationCountry]) -> [LocationCountry] {
        return countries
            .filter { wineProducerCountryCodes.contains($0.code) }
            .sorted { $0.name < $1.name }
    }

    static func generateSwiftFile(from countries: [LocationCountry]) -> String {
        let dateFormatter = ISO8601DateFormatter()
        // swiftlint:disable:next use_dependency_for_date
        let timestamp = dateFormatter.string(from: Date())

        let countriesCode = countries.map { country in
            """
                DefaultWineCountry(
                    name: \"\(country.name)\",
                    code: \"\(country.code)\"
                )
            """
        }.joined(separator: ",\n")

        return """
        // This file is auto-generated. Do not edit manually.
        // Run `cd Wine/WineCommonLocationClient && tuist run WineCommonLocationClientGenerator` to regenerate
        // Generated on: \(timestamp)

        import Foundation

        /// A default wine-producing country for database seeding
        public struct DefaultWineCountry: Sendable {
            public let name: String
            public let code: String
            
            public init(name: String, code: String) {
                self.name = name
                self.code = code
            }
        }

        /// Pre-populated list of major wine-producing countries
        public let defaultWineProducingCountries: [DefaultWineCountry] = [
        \(countriesCode)
        ]

        """
    }
}

prvivate extension Collection {
    func unique<T: Hashable>(by discriminator: @escaping (Element) -> T) -> [Element] {
        var set = Set<T>()
        var arrayOrdered = [Element]()
        for value in self {
            // swiftlint:disable:next for_where
            if !set.contains(discriminator(value)) {
                set.insert(discriminator(value))
                arrayOrdered.append(value)
            }
        }

        return arrayOrdered
    }
}
