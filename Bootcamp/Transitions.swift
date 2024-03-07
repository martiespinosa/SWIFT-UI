//
//  Transitions.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 7/3/24.
//

import SwiftUI

struct Transitions: View {
    
    @State var isPressed: Bool = false
    
    var body: some View {
        VStack {
            Button("Tansition") {
                withAnimation(.easeInOut) {
                    isPressed.toggle()
                }
            }
            Spacer()
            
            if isPressed {
                RoundedRectangle(cornerRadius: 50)
                    .fill(.gray)
                    .ignoresSafeArea()
                    .frame(
                        width: UIScreen.main.bounds.width * 1,
                        height: UIScreen.main.bounds.height * 0.5)
            
                    .transition(.move(edge: .bottom))
                    .overlay(
                        VStack {
                            Text("AirPods de Marti")
                                .font(.title)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .padding(.vertical)
                            Spacer()
                            Image(systemName: "airpods.gen3")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                            Spacer()
                        }
                    )
            }
        }
    }
}

#Preview {
    Transitions()
}
