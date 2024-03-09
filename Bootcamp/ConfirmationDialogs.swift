//
//  ConfirmationDialogs.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 9/3/24.
//

import SwiftUI

struct ConfirmationDialogs: View {
    // actionSheet is deprecated, so we use confirmationDialog instead
    @State var showConfirmationDialog: Bool = false
    
    var body: some View {
        Button("Show confirmation dialog") {
            showConfirmationDialog.toggle()
        }
        .confirmationDialog("Title", isPresented: $showConfirmationDialog, actions: {
            Button("Option 1") {
                // Handle Option 1
            }
            Button("Option 2") {
                // Handle Option 2
            }
            Button("Option 3") {
                // Handle Option 3
            }
        })
    }
    
}

#Preview {
    ConfirmationDialogs()
}
