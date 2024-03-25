//
//  Groups.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 25/3/24.
//

import SwiftUI

struct Groups: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello world")
            
            Group {
                Text("Hello world")
                Text("Hello world")
            }
            .foregroundStyle(.secondary)
            
            Text("Hello world")
        }
        .font(.title)
    }
}

#Preview {
    Groups()
}
