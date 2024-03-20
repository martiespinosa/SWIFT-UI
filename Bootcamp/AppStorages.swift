//
//  AppStorages.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 20/3/24.
//

import SwiftUI

struct AppStorages: View {
    
    @AppStorage("name") var currentUserName: String? // We use @AppStorage to persist small pices of data
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
            
            Button("Save".uppercased()) {
                currentUserName = "Marti"
            }
        }
    }
}

#Preview {
    AppStorages()
}
