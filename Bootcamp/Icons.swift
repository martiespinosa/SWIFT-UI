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
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.green)
        
        Image(systemName: "star.fill")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.blue)
    }
}

#Preview {
    Icons()
}
