//
//  ContentView.swift
//  DigitalGarden
//
//  Created by Spencer Rafada on 10/31/22.
//

import SwiftUI
import MapKit

struct MyMapView: View {
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.8231, longitude: -111.7924), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    private var pointsOfInterest = [
        AnnotatedItem(name: "BYU-I I-Center Courts", coordinate: .init(latitude: 43.8179, longitude: -111.7852)),
        AnnotatedItem(name: "BYU-I STC", coordinate: .init(latitude: 43.8150, longitude: -111.7853)),
        AnnotatedItem(name: "Hana's Apartment", coordinate: .init(latitude: 43.8204, longitude: -111.7804))]
    
    var body: some View {
        // This follows the user's location and tracks them
        /*Map(coordinateRegion: $region,
         showsUserLocation: true,
         userTrackingMode: .constant(.follow))
         .edgesIgnoringSafeArea(.all)*/
        
        Map(coordinateRegion: $region, annotationItems: pointsOfInterest) { item in
            MapAnnotation(coordinate: item.coordinate) {
                PlaceAnnotationView(title: item.name)
            }
        }
        .ignoresSafeArea(.all)
        .navigationTitle("Custom Annotation")
    }
}


struct MyMapView_Previews: PreviewProvider {
    static var previews: some View {
        MyMapView()
    }
}

struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}
