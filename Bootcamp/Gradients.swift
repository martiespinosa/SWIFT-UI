//
//  Gradients.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 21/2/24.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing))
            .frame(width: 300, height: 200)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(RadialGradient(colors: [Color.red, Color.blue], center: .center, startRadius: 5, endRadius: 200))
            .frame(width: 300, height: 200)
        
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(AngularGradient(colors: [Color.red, Color.blue], center: .center, angle: .degrees(0)))
            .frame(width: 300, height: 200)
    }
}

#Preview {
    Gradients()
}
