//
//  Popovers.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 25/3/24.
//

import SwiftUI

struct Popovers: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        Button("Click me!") {
            showPopover.toggle()
        }
        .popover(isPresented: $showPopover) {
            Text("Hello world")
                .padding()
                .presentationCompactAdaptation(.popover)
        }
    }
}

#Preview {
    Popovers()
}
