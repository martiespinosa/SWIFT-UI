//
//  TernaryOperators.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 5/3/24.
//

import SwiftUI

struct TernaryOperators: View {
    
    @State var isPressed: Bool = false
    
    var body: some View {
        // Ternary operators are basically if statments in just one line.
        Button("Button") {
            isPressed.toggle()
        }
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(isPressed ? .blue : .green) // Ternary operator
            .frame(width: 100, height: 100)
        
        Text(isPressed ? "Blue" : "Green") // Ternary operator
    }
}

#Preview {
    TernaryOperators()
}
