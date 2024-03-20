//
//  AppStorages.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 20/3/24.
//

import SwiftUI

struct AppStorages: View {
    
    @AppStorage("name") var currentUserName: String? // We use @AppStorage to persist small pices of data
    @State var textFieldText: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
                .font(.title)
            TextField("Your name is...", text: $textFieldText)
                .padding(.horizontal, 50)
            
            Button("Save".uppercased()) {
                currentUserName = textFieldText
            }
        }
    }
}

#Preview {
    AppStorages()
}
