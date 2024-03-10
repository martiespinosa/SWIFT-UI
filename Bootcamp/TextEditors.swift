//
//  textEditor.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 10/3/24.
//

import SwiftUI

struct TextEditors: View {
    
    @State var textEditorText: String = "This is the starting text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.5))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
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
