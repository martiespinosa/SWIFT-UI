//
//  Menus.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 25/3/24.
//

import SwiftUI

struct Menus: View {
    
    @State private var text: String = ""
    
    var body: some View {
        Menu(text == "" ? "Choose a number" : text) {
            Button("One") {
                text = "One"
            }
            Button("Two") {
                text = "Two"
            }
            Button("Three") {
                text = "Three"
            }
            Button("Four") {
                text = "Four"
            }
        }
    }
}

#Preview {
    Menus()
}
