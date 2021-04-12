//
//  CircleImage.swift
//  LandmarksApp
//
//  Created by Tomasz Jaeschke on 06/04/2021.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
            .previewDevice("iPhone 12 mini")
    }
}
