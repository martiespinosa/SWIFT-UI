//
//  Animations.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 5/3/24.
//

import SwiftUI

struct Animations: View {
    
    @State var isPressed: Bool = false
    
    var body: some View {
        Spacer()
        RoundedRectangle(cornerRadius: 125)
            .fill(.blue)
            .frame(width: 250, height: 250)
            .offset(y: isPressed ? -200 : 180)
        Spacer()
        
        Button("Chage with animation") {
            withAnimation(.default) {
                isPressed.toggle()
            }
        }
    }
}
	
#Preview {
    Animations()
}
