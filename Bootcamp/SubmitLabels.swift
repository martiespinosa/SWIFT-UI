//
//  KeyboardSubmitLabel.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 24/3/24.
//

import SwiftUI

struct SubmitLabels: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
                .submitLabel(.continue)
                .onSubmit {
                    // do something
                }
            
            TextField("Enter text", text: $text)
                .submitLabel(.done)
            
            TextField("Enter text", text: $text)
                .submitLabel(.go)
            
            TextField("Enter text", text: $text)
                .submitLabel(.join)
            
            TextField("Enter text", text: $text)
                .submitLabel(.next)
            
            TextField("Enter text", text: $text)
                .submitLabel(.return)
            
            TextField("Enter text", text: $text)
                .submitLabel(.route)
            
            TextField("Enter text", text: $text)
                .submitLabel(.send)
            
            TextField("Enter text", text: $text)
                .submitLabel(.search)
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    SubmitLabels()
}
