//
//  IgnoreSafeAreas.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 29/2/24.
//

import SwiftUI

struct IgnoresSafeAreas: View {
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            
            ScrollView {
                VStack() {
                    Text("Hello, World!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .top)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.blue.opacity(0.6))
                            .frame(height: 150)
                    }
                }
                .padding()
            }
        }
 
    }
}

#Preview {
    IgnoresSafeAreas()
}
