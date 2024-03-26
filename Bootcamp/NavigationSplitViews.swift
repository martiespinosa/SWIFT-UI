//
//  NavigationSplitViews.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 26/3/24.
//

import SwiftUI

struct NavigationSplitViews: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .doubleColumn
    @State private var selectedFruit: Fruit? = nil
    
    var body: some View {
        // NavigationSplitView is more useful for iPad, mac & Vision Pro.
        // For iPhone is easier to use NavigationStack.
        NavigationSplitView(columnVisibility: $visibility) {
            List(Fruit.allCases, id: \.rawValue, selection: $selectedFruit) { fruit in
                NavigationLink(fruit.rawValue.capitalized, value: fruit)
            }
            .navigationTitle("Fruits")
        } detail: {
            if let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue.capitalized)")
                    .font(.title2)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select a fruit")
                    .font(.callout)
                    .foregroundStyle(.secondary)
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
    
    enum Fruit: String, CaseIterable {
        case apple, orange, banana
    }
}

#Preview {
    NavigationSplitViews()
}
