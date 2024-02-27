//
//  ScrollViews.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 27/2/24.
//

import SwiftUI

struct ScrollViews: View {
    
    let colors: [Color] = [.blue, .green, .yellow, .orange, .brown]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<25) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<5) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(colors[index])
                                    .frame(width: 170, height: 170)
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
