//
//  Buttons.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 29/2/24.
//

import SwiftUI

struct Buttons: View {
    
    @State var colors: [Color] = [.blue, .green, .orange, .yellow, .brown]
    @State var index = 0
    @State var count = 0
    
    var body: some View {
        Button(action: {
            if index <= 3 {
                index += 1
            } else {
                index = 0
            }
            count += 1
        }, label: {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(colors[index])
                .frame(width: 150, height: 150)
                .overlay(
                    Text("\(count)")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                )
        })
        
    }
}

#Preview {
    Buttons()
}
