//
//  CircleImage.swift
//  LandmarksApp
//
//  Created by Tomasz Jaeschke on 06/04/2021.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
            .previewDevice("iPhone 12 mini")
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
