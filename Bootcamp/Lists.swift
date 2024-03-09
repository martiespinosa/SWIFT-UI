//
//  Lists.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 9/3/24.
//

import SwiftUI

struct Lists: View {
    
    @State var fruits: [String] = ["Apple", "Peach", "Grape"]
    @State var vegetables: [String] = ["Carrot", "Broccoli", "Potato"]
    
    var body: some View {
        NavigationView {
            List {
                Section("Fruits") {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                Section("Vegetables") {
                    ForEach(vegetables, id: \.self) { vegetable in
                        Text(vegetable)
                    }
                }
                
            }
            .listStyle(.sidebar)
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button("Add") {
                    add()
                }
            )
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    Lists()
}
