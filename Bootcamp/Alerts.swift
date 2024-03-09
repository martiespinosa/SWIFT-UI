//
//  Alerts.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 9/3/24.
//

import SwiftUI

struct Alerts: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        Button("Show alert") {
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    func getAlert() -> Alert {
        return Alert(
            title: Text("This is an alert"),
            primaryButton: .cancel(),
            secondaryButton: .destructive(Text("Delete")))
    }
}

#Preview {
    Alerts()
}
