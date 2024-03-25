//
//  AnyLayouts.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 25/3/24.
//

import SwiftUI

struct AnyLayouts: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            .padding(.top, 50)
            .font(.title)
        }
        .font(.caption)
    }
}

#Preview {
    AnyLayouts()
}
