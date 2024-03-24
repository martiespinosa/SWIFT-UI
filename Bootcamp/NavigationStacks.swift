//
//  NavigationStacks.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 24/3/24.
//

import SwiftUI

struct NavigationStacks: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("CLick me: \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStacks()
}
