//
//  ContentUnavailableViews.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 26/3/24.
//

import SwiftUI

struct ContentUnavailableViews: View {
    var body: some View {
//        ContentUnavailableView.search(text: "abc")
        
        ContentUnavailableView(
            "No Internet Connection",
            systemImage: "wifi.slash",
            description: Text("Check your connection and try again.")
        )
    }
}

#Preview {
    ContentUnavailableViews()
}
