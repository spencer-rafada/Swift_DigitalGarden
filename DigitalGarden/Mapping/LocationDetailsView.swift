//
//  LocationDetailsView.swift
//  DigitalGarden
//
//  Created by Spencer Rafada on 10/31/22.
//

import SwiftUI
import MapKit

struct LocationDetailsView: View {
    let place: AnnotatedItem
    var body: some View {
        VStack(spacing: 20) {
            Text(place.name)
            Text("\(place.coordinate.latitude); \(place.coordinate.longitude)")
        }
    }
}

struct LocationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailsView(place: AnnotatedItem(name: "Place", coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0)))
    }
}
