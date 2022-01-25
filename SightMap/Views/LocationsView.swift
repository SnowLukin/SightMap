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
            mapLayer
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                header
                Spacer()
                locationsPreviewStack
            }
        }
        .sheet(item: $viewModel.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .previewDevice("iPhone SE (1st generation)")
            .environmentObject(LocationsViewModel())
    }
}


extension LocationsView {
    
    private var header: some View {
        VStack {
            Button {
                viewModel.toggleLocationList()
            } label: {
                HStack(spacing: 0) {
                    Image(systemName: "arrow.down")
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding()
                        .rotationEffect(
                            Angle(degrees: viewModel.showLocationList ? 180 : 0)
                        )
                        .background(.blue)
                    
                    Text(viewModel.mapLocation.name)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.primary)
                        .animation(.none, value: viewModel.mapLocation)
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
    
    private var mapLayer: some View {
        Map(coordinateRegion: $viewModel.mapRegion,
            annotationItems: viewModel.locations,
            annotationContent: { location in
//                MapMarker(coordinate: location.coordinates, tint: .blue)
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .scaleEffect(viewModel.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        viewModel.showNextLocation(location: location)
                    }
            }
        })
    }
    
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(viewModel.locations) { location in
                if viewModel.mapLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: .black.opacity(0.3), radius: 20)
                        .padding()
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading))
                        )
                }
            }
        }
    }
}
