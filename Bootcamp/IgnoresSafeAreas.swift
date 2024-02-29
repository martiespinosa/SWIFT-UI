//
//  IgnoreSafeAreas.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 29/2/24.
//

import SwiftUI

struct IgnoresSafeAreas: View {
    var body: some View {
        ScrollView {
            VStack() {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .top)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.black.opacity(0.6))
                        .frame(height: 150)
                }
            }
            .padding()
        }
        .background(
            Color.brown
                //.ignoresSafeArea() // it seems like now backgrounds igores the safe area by default...
        )
    }
}

#Preview {
    IgnoresSafeAreas()
}
