//
//  TextFields.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 10/3/24.
//

import SwiftUI

struct TextFields: View {
    
    @State var textFieldText: String = ""
    @State var username: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                TextField("Enter your username", text: $textFieldText)
                    .padding()
                    .background(.gray.opacity(0.25))
                    .cornerRadius(15)
                    .font(.headline)
                
                Button(action: {
                    if usernameIsCorrect() {
                        welcomeUser()
                        textFieldText = ""
                    }
                }, label: {
                    Text("Done")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(usernameIsCorrect() ? .blue : .gray)
                        .cornerRadius(15)
                        .font(.headline)
                })
                Spacer()
                Text(username)
                    .font(.title)
                    .bold()
                Spacer()
            }
            .padding()
            .navigationTitle("Login")
        }
    }
    
    func usernameIsCorrect() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func welcomeUser() {
        username = "Hi, \(textFieldText)"
    }
}

#Preview {
    TextFields()
}
