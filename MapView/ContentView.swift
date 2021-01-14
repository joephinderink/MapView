//
//  ContentView.swift
//  MapView
//
//  Created by Joep Hinderink on 21/12/2020.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 52.08, longitude: 4.3 ), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    private let places: [Location] = [
    Location(coordinate: CLLocationCoordinate2D(latitude: 52.08, longitude: 4.3 ))
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places , annotationContent: { place in
            MapMarker(coordinate: place.coordinate)
        })
            .ignoresSafeArea(.all, edges: .vertical)
            .statusBar(hidden: true)
    }
}

struct Location: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
