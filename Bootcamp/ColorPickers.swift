//
//  ColorPickers.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 11/3/24.
//

import SwiftUI

struct ColorPickers: View {
    
    @State var backgroundColor: Color = .clear
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker("Select background color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
                .padding()
                .background(.secondary.opacity(0.8))
                .cornerRadius(15)
                .foregroundColor(.primary.opacity(0.8))
                .font(.headline)
                .padding()
        }
    }
}

#Preview {
    ColorPickers()
}
