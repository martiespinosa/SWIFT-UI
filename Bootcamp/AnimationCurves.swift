//
//  AnimationCurves.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 6/3/24.
//

import SwiftUI

struct AnimationCurves: View {
    
    @State var isPressed: Bool = false
    
    let timing: Double = 1
    
    var body: some View {
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: isPressed ? 300 : 100, height: 100)
                .overlay(Text(isPressed ? "linear" : "").font(.title).fontWeight(.bold))
                .animation(.linear(duration: timing), value: isPressed)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: isPressed ? 300 : 100, height: 100)
                .overlay(Text(isPressed ? "easeIn" : "").font(.title).fontWeight(.bold))
                .animation(.easeIn(duration: timing), value: isPressed)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: isPressed ? 300 : 100, height: 100)
                .overlay(Text(isPressed ? "easeInOut" : "").font(.title).fontWeight(.bold))
                .animation(.easeInOut(duration: timing), value: isPressed)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: isPressed ? 300 : 100, height: 100)
                .overlay(Text(isPressed ? "easeOut" : "").font(.title).fontWeight(.bold))
                .animation(.easeOut(duration: timing), value: isPressed)
            
            Spacer()
            Button("Animate") {
                isPressed.toggle()
            }
        }
    }
}

#Preview {
    AnimationCurves()
}
