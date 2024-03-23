//
//  ButtonModifiers.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 23/3/24.
//

import SwiftUI

struct ButtonModifiers: View {
    var body: some View {
        VStack(spacing: 50) {
            Button("Button") {
                
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .controlSize(.extraLarge)
            
            Button("Button") {
                
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
            
            Button("Button") {
                
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.regular)
            
            Button("Button") {
                
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.small)
            
            Button("Button") {
                
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .controlSize(.mini)
        }
    }
}

#Preview {
    ButtonModifiers()
}
