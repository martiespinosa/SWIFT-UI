//
//  Shapes.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 21/2/24.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        Circle()
            .stroke(Color.green, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [60]))
        
        Circle()
            .trim(from: 0.2, to: 01.0)
            .stroke(Color.orange, lineWidth: 30)
        
        Capsule(style: .circular)
            .fill(Color.brown)
            .frame(width: 200, height: 100)
            
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.yellow)
            .frame(width: 300, height: 100)
    }
}

#Preview {
    Shapes()
}
