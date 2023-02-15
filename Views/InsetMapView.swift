//
//  InsetMapView.swift
//  Africa
//
//  Created by Nicholes Guillory on 2/3/23.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    // MARK: - PROPERTIES
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    let animal: AnimalsModel
    
    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.blue)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } //: HSTACK
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                } //: NAVIGATION
                    .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

// MARK: PREVIEWS
struct InsetMapView_Previews: PreviewProvider {
    static let animals: [AnimalsModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetMapView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
