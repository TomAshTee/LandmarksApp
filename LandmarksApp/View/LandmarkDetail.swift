//
//  LandmarkDetail.swift
//  LandmarksApp
//
//  Created by Tomasz Jaeschke on 12/04/2021.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var additionalSize = 0
    
    var body: some View {
        ScrollView {
            NavigationLink(destination: MapView(coordinate: landmark.locationCoordinate)) {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                    .ignoresSafeArea(edges: .top)
            }
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                    .font(.subheadline)
            }
            .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[1])
            .previewDevice("iPhone 12 mini")
    }
}
