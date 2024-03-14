//
//  OnAppears.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 14/3/24.
//

import SwiftUI

struct OnAppears: View {
    
    @State var title: String = ""
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 100)
                            .onAppear() {
                                count += 1
                            }
                    }
                }
                .padding()
            }
            .navigationTitle("\(title): \(count)")
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    title = "On appear"
                }
            }
            .onDisappear() {
                title = ""
            }
        }
    }
}

#Preview {
    OnAppears()
}
