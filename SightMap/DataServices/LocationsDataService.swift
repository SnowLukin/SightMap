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
            name: "The State Hermitage Museum",
            cityName: "Saint Petersburg",
            coordinates: CLLocationCoordinate2D(latitude: 59.9398,
                                                longitude: 30.3146),
            description: "The State Hermitage Museum is a museum of art and culture in Saint Petersburg, Russia. It is the largest art museum in the world by gallery space. It was founded in 1764 when Empress Catherine the Great acquired an impressive collection of paintings from the Berlin merchant Johann Ernst Gotzkowsky. The museum celebrates the anniversary of its founding each year on 7 December, Saint Catherine's Day. It has been open to the public since 1852. It attracted 968,604 visitors in 2020, a drop of eighty percent from 2019, due to the COVID-19 pandemic. In 2020, it ranked eleventh on the list of most visited art museums in the world.",
            imagesName: ["hermitage1", "hermitage2", "hermitage3"],
            link: "https://en.wikipedia.org/wiki/Hermitage_Museum"
        ),
        
        Location(
            name: "Savior on the Spilled Blood",
            cityName: "Saint Petersburg",
            coordinates: CLLocationCoordinate2D(latitude: 59.9401,
                                                longitude: 30.3289),
            description: "The Church of the Savior on Spilled Blood is a Russian Orthodox church in Saint Petersburg, Russia which currently functions as a secular museum and church at the same time. The structure was constructed between 1883 and 1907. It is one of Saint Petersburg's major attractions. \nThe church was erected on the site where political nihilists assassinated Emperor Alexander II in March 1881. The church was funded by the Romanov imperial family in honor of Alexander II, and the suffix on [Spilled] Blood refers to his assassination.",
            imagesName: ["savioronthespilledblood1", "savioronthespilledblood2", "savioronthespilledblood3"],
            link: "https://en.wikipedia.org/wiki/Church_of_the_Savior_on_Blood"
        ),
        
        Location(
            name: "Peterhof Palace",
            cityName: "Saint Petersburg",
            coordinates: CLLocationCoordinate2D(latitude: 59.8863,
                                                longitude: 29.9086),
            description: "The Peterhof Palace (an emulation of early modern Dutch Pieterhof, meaning Pieter's Court), is a series of palaces and gardens located in Petergof, Saint Petersburg, Russia, commissioned by Peter the Great as a direct response to the Palace of Versailles by Louis XIV of France. Originally intending it in 1709 for country habitation, Peter the Great sought to expand the property as a result of his visit to the French royal court in 1717, inspiring the nickname of The Russian Versailles. The architect between 1714 and 1728 was Domenico Trezzini, and the style he employed became the foundation for the Petrine Baroque style favored throughout Saint Petersburg. Also in 1714, Jean-Baptiste Alexandre Le Blond, likely chosen due to his previous collaborations with Versailles landscaper André Le Nôtre, designed the gardens. Francesco Bartolomeo Rastrelli completed an expansion from 1747 to 1756 for Elizabeth of Russia. The palace-ensemble along with the city center is recognized as a UNESCO World Heritage Site.",
            imagesName: ["peterhofpalace1", "peterhofpalace2", "peterhofpalace3"],
            link: "https://en.wikipedia.org/wiki/Peterhof_Palace"
        ),
        
        Location(
            name: "Catherine Palace",
            cityName: "Saint Petersburg",
            coordinates: CLLocationCoordinate2D(latitude: 59.7161,
                                                longitude: 30.3957),
            description: "The Catherine Palace is a Rococo palace in Tsarskoye Selo (Pushkin), 30 km south of St. Petersburg, Russia. It was the summer residence of the Russian tsars. The Palace is part of the World Heritage Site Saint Petersburg and Related Groups of Monuments.",
            imagesName: ["catherinepalace1", "catherinepalace2", "catherinepalace3"],
            link: "https://en.wikipedia.org/wiki/Catherine_Palace"
        )
    
    ]
    
}
