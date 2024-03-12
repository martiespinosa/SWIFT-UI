//
//  Sliders.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 12/3/24.
//

import SwiftUI

struct Sliders: View {
    
    @State var sliderValue: Double = 5
    
    var body: some View {
        
        VStack {
            Slider(value: $sliderValue, in: 0...10, step: 1)
            Text("\(String(format: "%.0f", sliderValue))")
                .font(.title)
        }
        .padding(50)
    }
}

#Preview {
    Sliders()
}
