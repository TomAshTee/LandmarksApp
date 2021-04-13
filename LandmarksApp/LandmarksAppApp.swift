//
//  LandmarksAppApp.swift
//  LandmarksApp
//
//  Created by Tomasz Jaeschke on 06/04/2021.
//

import SwiftUI

@main
struct LandmarksAppApp: App {
    @StateObject var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
