//
//  LocationsDataService.swift
//  SightMap
//
//  Created by Snow Lukin on 24.01.2022.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
    
        Location(
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902,
                                                longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageName: "parisImage",
            link: "https://en.wikipedia.org/wiki/Colosseum"
        ),
        
        Location(
            name: "The Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584,
                                                longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.",
            imageName: "parisImage",
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"
        ),
        
        Location(
            name: "Colosseum 2.0",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902,
                                                longitude: 12.4910),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageName: "parisImage",
            link: "https://en.wikipedia.org/wiki/Colosseum"
        ),
        
        Location(
            name: "The Eiffel Tower 2.0",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584,
                                                longitude: 2.2920),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.",
            imageName: "parisImage",
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"
        )
    
    ]
    
}
