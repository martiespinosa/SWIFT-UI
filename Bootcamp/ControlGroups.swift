//
//  ControlGroups.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 26/3/24.
//

import SwiftUI

struct ControlGroups: View {
    var body: some View {
        VStack(spacing: 60) {
            ControlGroup {
                Button("One") {}
                Button("Two") {}
                Button("Three") {}
            }
            
            Menu("Control Group 1") {
                ControlGroup {
                    Button("One") {}
                    Button("Two") {}
                    Button("Three") {}
                }
            }
            
            Menu("Control Group 2") {
                Menu("Hello") {
                    Button("There") {}
                    Button("World") {}
                    Button("Friends") {}
                }
                
                ControlGroup("Numbers") {
                    Button("One") {}
                    Button("Two") {}
                    Menu("Number") {
                        Button("1") {}
                        Button("2") {}
                        Button("3") {}
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ControlGroups()
}
