//
//  IfLetGuardLet.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 15/3/24.
//

import SwiftUI

struct IfLetGuardLet: View {
    
    @State var displayText: String? = nil
    @State var userID: Int? = 22
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
            }
            .navigationTitle("Safe coding")
            .onAppear() {
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is your ID: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error:\nYou don't have user ID"
        }
    }
    
    func loadData2() {
        guard let userID else {
            displayText = "Error:\nYou don't have user ID"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            displayText = "This is your ID: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardLet()
}
