//
//  SightMapApp.swift
//  SightMap
//
//  Created by Snow Lukin on 24.01.2022.
//

import SwiftUI

@main
struct SightMapApp: App {
    
    @StateObject private var viewModel = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(viewModel)
        }
    }
}
