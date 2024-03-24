//
//  Badges.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 24/3/24.
//

import SwiftUI

struct Badges: View {
    
    @State var fruits: [String] = ["apple", "banana", "orange", "peach"]
    
    var body: some View {
        TabView {
            ZStack {
                List {
                    ForEach(fruits, id: \.self) {
                        if $0 == "apple" {
                            Text($0.capitalized)
                                .badge("New") // badge for lists
                        } else {
                            Text($0.capitalized)
                        }
                    }
                }
            }
                .tabItem {
                    Image(systemName: "house.circle.fill")
                    Text("Home")
                }
                .badge(0)
            
            Color.mint.ignoresSafeArea()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle.fill")
                    Text("Search")
                }
                .badge(0)
            
            Color.cyan.ignoresSafeArea()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }
                .badge(1) // badge for tab views
        }
    }
}

#Preview {
    Badges()
}
