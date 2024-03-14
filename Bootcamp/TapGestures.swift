//
//  TapGestures.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 14/3/24.
//

import SwiftUI

struct TapGestures: View {
    
    @State var isPressed: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isPressed ? .green : .blue)
                .frame(height: 200)
            
            Button {
                isPressed.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25.0)
            }
            
            Text("1 TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
                .onTapGesture {
                    isPressed.toggle()
                }
            
            Text("2 TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
                .onTapGesture(count: 2, perform: {
                    isPressed.toggle()
                })
        }
        .padding(50)
    }
}

#Preview {
    TapGestures()
}
