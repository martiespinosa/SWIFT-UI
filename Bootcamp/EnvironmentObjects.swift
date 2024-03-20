//
//  EnvironmentObjects.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 20/3/24.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "Mac", "Apple watch"])
    }
}

struct EnvironmentObjects: View {
    
    @StateObject var vm: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                                .font(.headline)
                        }
                    )
                }
            }
            .navigationTitle("Environment Object")
        }
        .environmentObject(vm) // All subviews will have access to vm
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        NavigationLink(
            destination: FinalView(),
            label: {
                Text(selectedItem)
                    .font(.headline)
            }
        )
    }
}

struct FinalView: View {
    
    @EnvironmentObject var vm: EnvironmentViewModel // Only use @EnvironmentObject when you have a bunch of screens and you need access to that object in some of them
    
    var body: some View {
        VStack {
            ForEach(vm.dataArray, id: \.self) { item in
                Text(item)
            }
        }
        .font(.headline)
    }
}

#Preview {
    EnvironmentObjects()
}
