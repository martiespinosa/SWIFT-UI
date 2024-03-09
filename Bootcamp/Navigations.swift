//
//  Navivations.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 8/3/24.
//

import SwiftUI

struct Navigations: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack() {
                    ForEach(0..<15) { index in
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(.gray.opacity(0.2))
                            .frame(height: 50)
                            .overlay(
                                NavigationLink("Pantalla \(index + 1)", destination: Pantalla(numeroPantalla: index + 1))
                            )
                    }
                }
                .padding()
            }
            .navigationTitle("Ajustes")
        }
    }
}

struct Pantalla: View {
    let numeroPantalla: Int
    
    var body: some View {
        Text("Contenido de Pantalla \(numeroPantalla)")
            .navigationTitle("Pantalla \(numeroPantalla)")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Navigations()
}
