//
//  Images.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 22/2/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("elon")
            .resizable()
            .scaledToFill() // This and .aspectRatio(contentMode: .fill) are the same & .scaleToFit() and .aspectRatio(contentMode: .fit) are the same
            .frame(width: 300, height: 300)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        
        Image("tesla")
            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/) // this can also be putted on Assets and that way this image will be a template by default so sw can colorate the image with foregroundColor
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .foregroundColor(.green)
    }
}

#Preview {
    Images()
}
