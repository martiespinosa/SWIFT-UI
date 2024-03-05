//
//  Extracts.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 2/3/24.
//

import SwiftUI

struct Extracts: View {
    
    @State var currentIndex: Int = 0
    
    var body: some View {
        VStack {
            TrafficLightView(currentIndex: $currentIndex)
            
            Button("Change") {
                if currentIndex <= 1 {
                    currentIndex += 1
                } else {
                    currentIndex = 0
                }
            }
        }
    }
}


struct TrafficLightView: View {
    
    @State var trafficLightColors: [Color] = [.red, .orange, .green]
    @Binding var currentIndex: Int
    
    var body: some View {
        Spacer()
        ForEach(0..<3) { index in
            if index == currentIndex {
                Circle()
                    .fill(trafficLightColors[index].opacity(1))
                    .frame(width: 100, height: 100)
                    .shadow(color: trafficLightColors[index], radius: 10, x: 0.0, y: 0.0)
            } else {
                Circle()
                    .fill(trafficLightColors[index].opacity(0.25))
                    .frame(width: 100, height: 100)
            }
        }
        Spacer()
    }
}



#Preview {
    Extracts()
}
