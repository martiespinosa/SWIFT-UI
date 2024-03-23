//
//  ListSwipeActions.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 24/3/24.
//

import SwiftUI

struct ListSwipeActions: View {
    
    @State var fruits: [String] = ["apple", "banana", "orange", "peach"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id: \.self) {
                    Text($0.capitalized)
                        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                            Button("Archive") {}
                                .tint(.green)
                            Button("Save") {}
                                .tint(.blue)
                            Button("Junk") {}
                                .tint(.gray)
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button("Share") {}
                                .tint(.yellow)
                        }
                }
                //.onDelete(perform: delete)
            }
            .navigationTitle("Swipe actions")
        }
    }
    
    func delete(indexSet: IndexSet) {}
}

#Preview {
    ListSwipeActions()
}
