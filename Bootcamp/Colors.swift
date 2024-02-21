//
//  Colors.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 21/2/24.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(Color.primary) // Primary color changes automatically for light/dark mode
            .frame(width: 300, height: 200)
            .shadow(color: Color.primary, radius: 10)
            
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(Color(#colorLiteral(red: 0, green: 1, blue: 0.4, alpha: 1))) // OK, this shouldn't have to see that way, in theory it has to be a color window where you chose the color, but it doesn't working in this version
            .frame(width: 300, height: 200)
            .shadow(color: Color(#colorLiteral(red: 0, green: 1, blue: 0.4, alpha: 1)), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(Color("CustomColor")) // Custom color also changes automatically for light/dark mode (as I defined in Assets)
            .frame(width: 300, height: 200)
            .shadow(color: Color("CustomColor").opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:15, y:15)
    }
}

#Preview {
    Colors()
}
