//
//  LocationView.swift
//  SightMap
//
//  Created by Snow Lukin on 24.01.2022.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var viewModel: LocationsViewModel
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $viewModel.mapRegion)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                header
                
                Spacer()
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .previewDevice("iPhone 11 Pro")
            .environmentObject(LocationsViewModel())
    }
}


extension LocationsView {
    
    private var header: some View {
        VStack {
            Button {
                viewModel.toggleLocationList()
            } label: {
                Text(viewModel.mapLocation.name + ", " + viewModel.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.primary)
                    .animation(.none, value: viewModel.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(
                                Angle(degrees: viewModel.showLocationList ? 180 : 0)
                            )
                    }
            }

            
            if viewModel.showLocationList {
                LocationsListView()
            }
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 15)
        .padding()
    }
    
}
