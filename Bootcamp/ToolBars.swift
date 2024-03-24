//
//  ToolBars.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 24/3/24.
//

import SwiftUI

struct ToolBars: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            VStack {
                TextField("Placeholder", text: $text)
                    .padding(.leading)
            }
            .navigationTitle("Tool Bar")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "heart.fill")
                        Image(systemName: "star.fill")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "globe")
                }
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "checkmark")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
            }
        }
    }
}

#Preview {
    ToolBars()
}
