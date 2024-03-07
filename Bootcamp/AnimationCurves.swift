//
//  AnimationCurves.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 6/3/24.
//

import SwiftUI

struct AnimationCurves: View {
    
    @State var isPressed: Bool = false
    
    let timing: Double = 0.5
    
    var body: some View {
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: isPressed ? 300 : 100, height: 100)
                .overlay(Text(isPressed ? "spring" : "1").font(.title).fontWeight(.bold))
                //.animation(.linear(duration: timing), value: isPressed)
                .animation(.spring(
                    duration: timing,
                    bounce: 0.5,
                    blendDuration: 1.0),
                           value: isPressed)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: isPressed ? 300 : 100, height: 100)
                .overlay(Text(isPressed ? "easeIn" : "2").font(.title).fontWeight(.bold))
                .animation(.easeIn(duration: timing), value: isPressed)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: isPressed ? 300 : 100, height: 100)
                .overlay(Text(isPressed ? "easeInOut" : "3").font(.title).fontWeight(.bold))
                .animation(.easeInOut(duration: timing), value: isPressed)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: isPressed ? 300 : 100, height: 100)
                .overlay(Text(isPressed ? "easeOut" : "4").font(.title).fontWeight(.bold))
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
