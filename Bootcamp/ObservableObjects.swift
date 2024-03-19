//
//  ObservableObjects.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 19/3/24.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray: [FruitModel] = [] // @Published is similar to @State, but @State is for structs and @Published is for classes
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Oranges", count: 3)
        let fruit2 = FruitModel(name: "Bananas", count: 5)
        let fruit3 = FruitModel(name: "Grapes", count: 12)
        
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
    }
    
}

struct ObservableObjects: View {
    
    @StateObject var vm: FruitViewModel = FruitViewModel() // Use @StateObject when you create / instanciate the ovject, and @ObservedObject when you use it on a subview.
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.fruitArray) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .bold()
                        Text(fruit.name)
                    }
                    .font(.title3)
                }
            }
            NavigationLink("Go to second screen", destination: SecondScreen(vm: vm))
            
            .navigationTitle("Observable object")
        }
    }
}

struct SecondScreen: View {
    
    @ObservedObject var vm: FruitViewModel
    
    var body: some View {
        ForEach(vm.fruitArray) { fruit in
            Text(fruit.name)
        }
    }
}

#Preview {
    ObservableObjects()
}
