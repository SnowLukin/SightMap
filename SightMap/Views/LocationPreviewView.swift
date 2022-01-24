//
//  LocationPreviewView.swift
//  SightMap
//
//  Created by Snow Lukin on 25.01.2022.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var viewModel: LocationsViewModel
    
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                titleSection
            }
            
            VStack {
                learnButton
                nextButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .cornerRadius(10)
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        // TODO: Remove force unwrapping
        ZStack {
            Color.green.ignoresSafeArea()
            LocationPreviewView(location: LocationsDataService.locations.first!)
                .padding()
        }
        .environmentObject(LocationsViewModel())
    }
}

extension LocationPreviewView {
    private var imageSection: some View {
        ZStack {
            Image(location.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
        }
        .padding(6)
        .background(.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.semibold)
                
            Text(location.cityName)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnButton: some View {
        Button {
            
        } label: {
            Text("Learn more")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
        Button {
            viewModel.nextButtonPressed()
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.bordered)
    }
}
