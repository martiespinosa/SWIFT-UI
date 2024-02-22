//
//  Icons.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 21/2/24.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            //.scaledToFill()
            .scaledToFit()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.green)
            .frame(width: 100, height: 100)
            //.clipped()
        
        Image(systemName: "star.fill")
            .resizable()
            .scaledToFit()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.blue)
            .frame(width: 100, height: 100)
        
        Image(systemName: "battery.100.bolt")
            .resizable()
            .renderingMode(.original)
            //.foregroundStyle(.orange, .gray, .purple)
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
    }
}

#Preview {
    Icons()
}
