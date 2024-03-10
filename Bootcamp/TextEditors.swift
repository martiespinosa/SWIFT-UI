//
//  textEditor.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 10/3/24.
//

import SwiftUI

struct TextEditors: View {
    
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundStyle(.black.opacity(0.8))
                    .scrollContentBackground(.hidden) // we cannot change the background color of 'TextEditor' directly, first we have to hide the default background using this code, then apply background.
                    .padding()
                    .background(.gray.opacity(0.5)) // To see this
                    .clipShape(.rect(cornerRadii: .init(topLeading: 15, bottomLeading: 15, bottomTrailing: 15, topTrailing: 15))) // cornerRadius is deprecated.
                
                Button(action: {
                    saveText()
                }, label: {
                    Text("Done")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(15)
                        .font(.headline)
                })
                
                Text(savedText)
                    .padding()
                    .padding(.vertical, 40)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Edit bio")
        }
    }
    
    func saveText() {
        savedText = textEditorText
    }
}

#Preview {
    TextEditors()
}
