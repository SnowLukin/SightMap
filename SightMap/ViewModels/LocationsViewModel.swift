//
//  LocationViewModel.swift
//  SightMap
//
//  Created by Snow Lukin on 25.01.2022.
//

import SwiftUI
import MapKit

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion = MKCoordinateRegion()
    private let mapSpan = MKCoordinateSpan(
        latitudeDelta: 0.1,
        longitudeDelta: 0.1
    )
    
    private let errorLocation = Location(
        name: "Error",
        cityName: "Error",
        coordinates: CLLocationCoordinate2D(
            latitude: 41.8902,
            longitude: 12.4922
        ),
        description: "Error",
        imageName: "parisImage",
        link: "https://en.wikipedia.org/wiki/"
    )
    
    // Show list of locations
    @Published var showLocationList = false
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first ?? errorLocation
        
        self.updateMapRegion(location: locations.first ?? errorLocation)
    }
}

// MARK: - Public Methods
extension LocationsViewModel {
    func toggleLocationList() {
        withAnimation(.easeInOut) {
            showLocationList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationList = false
        }
    }
    
    func nextButtonPressed() {
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation }) else {
            print("Could not find current index in array of locations")
            return
        }
        
        // Check if currentIndex is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // Next index IS NOT valid
            // Restart from index 0
            guard let nextLocation = locations.first else { return }
            showNextLocation(location: nextLocation)
            return
        }
        // Next index IS valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
        
        
    }
}

// MARK: - Private Methods
extension LocationsViewModel {
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan
            )
        }
    }
}

