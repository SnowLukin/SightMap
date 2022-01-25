//
//  Location.swift
//  SightMap
//
//  Created by Snow Lukin on 24.01.2022.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imagesName: [String]
    let link: String
    
    // Identifiable
    var id: String {
        // not random id in order to not have
        // same object with different id
        name + cityName
    }
    
    // Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}

