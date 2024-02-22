//
//  Frames.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 22/2/24.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text("Hello, World!")
            .background(.green)
            .frame(height: 100, alignment: .bottom)
            .background(.orange)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.purple)
            .frame(height: 400, alignment: .top)
            .background(.blue)
            .frame(maxHeight: .infinity)
            .background(.brown)
    }
}

#Preview {
    Frames()
}
