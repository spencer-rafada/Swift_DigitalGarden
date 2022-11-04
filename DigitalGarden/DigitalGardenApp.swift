//
//  DigitalGardenApp.swift
//  DigitalGarden
//
//  Created by Spencer Rafada on 10/31/22.
//

import SwiftUI

@main
struct DigitalGardenApp: App {
    @State private var vm = LocationsViewModel()
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
