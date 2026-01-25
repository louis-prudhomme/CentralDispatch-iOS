//
//  WineBottlingLocation+Adapter.swift
//  WineFeatureAddWine
//
//  Created by Louis Prud'homme on 25/01/2026.
//  Copyright © 2026 fr.prudhomme.louis. All rights reserved.
//

import WineDomain
import WineCommonLocationClient

extension WineBottlingLocation {
    init(from location: Location) {
        self.init(
            name: location.name,
            coordinates: GeographicalCoordinates(from: location.coordinates),
            administrativeDivisions: location.administrativeDivisions.map { AdministrativeDivision(from: $0) },
            providerId: location.id
        )
    }
}

extension WineBottlingLocation.GeographicalCoordinates {
    init(from coordinates: Location.GeographicalCoordinates) {
        self.init(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

extension WineBottlingLocation.AdministrativeDivision {
    init(from division: Location.AdministrativeDivision) {
        self.init(
            type: DivisionType(from: division.type), name: division.name, code: division.code
        )
    }
}

extension WineBottlingLocation.AdministrativeDivision.DivisionType {
    init(from type: Location.AdministrativeDivision.`Type`) {
        self = switch type {
            case .country: .country
            case .region: .region
            case let .countyOrSmaller(importance): .countyOrSmaller(importance)
        }
    }
}
