//
//  PlaceAnnotationView.swift
//  DigitalGarden
//
//  Created by Spencer Rafada on 10/31/22.
//

import SwiftUI

struct PlaceAnnotationView: View {
    @State private var showTitle = true
    let title: String
    
    var body: some View {
        VStack (spacing: 0) {
            Text(title)
                .font(.callout)
                .padding(5)
                .background(Color(.white))
                .cornerRadius(10)
                .opacity(showTitle ? 0 : 1)
            Image(systemName: "mappin.circle.fill")
                .foregroundColor(.red)
                .font(.title)
            Image(systemName: "arrowtriangle.down.fill")
                .font(.caption)
                .foregroundColor(.red)
                .offset(x: 0, y: -5)
        }
        .onTapGesture {
            withAnimation(.easeInOut){
                showTitle.toggle()
            }
        }
    }
}

struct PlaceAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceAnnotationView(title: "Test")
    }
}
