//
//  ContentView.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 20/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Swift UI")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.blue)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
