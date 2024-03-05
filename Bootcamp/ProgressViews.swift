//
//  ProgressViews.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 5/3/24.
//

import SwiftUI

struct ProgressViews: View {
    
    @State var isLoading = false
    @State var buttonText = "Start loading"
    
    var body: some View {
        Button(buttonText) {
            isLoading.toggle() // .togle switchs between true & false
            if isLoading {
                buttonText = "Stop loading"
            } else {
                buttonText = "Start loading"
            }
        }
        
        if isLoading {
            ProgressView()
        }
    }
}

#Preview {
    ProgressViews()
}
