//
//  ScrollViews.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 27/2/24.
//

import SwiftUI

struct ScrollViews: View {
    
    let colors: [Color] = [.blue, .green, .yellow, .orange, .brown, .purple, .pink, .teal, .mint, .cyan]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<30) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(colors[index])
                                    .frame(width: 150, height: 150)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViews()
}
