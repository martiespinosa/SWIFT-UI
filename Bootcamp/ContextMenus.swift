//
//  ContextMenus.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 10/3/24.
//

import SwiftUI

struct ContextMenus: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(backgroundColor)
            .frame(width: 250, height: 150)
            .overlay(
                Image(systemName: "house.fill")
                    .font(.title)
            )
            .foregroundColor(.white)
            .contextMenu {
                VStack {
                    Text("Menu Item 1")
                    Text("Menu Item 2")
                    Text("Menu Item 3")
                    Button(action: {
                        backgroundColor = .yellow
                    }) {
                        Label("Like", systemImage: "heart")
                    }
                }
            }
    }
}



#Preview {
    ContextMenus()
}
