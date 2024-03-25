//
//  ViewThatFitss.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 25/3/24.
//

import SwiftUI

struct ViewThatFitss: View {
    var body: some View {
        VStack(spacing: 30) {
            // Here I can make the text fit using .lineLimit() & .minimumScaleFacor()
            Text("This is some text that I would like to display to the user!")
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
            // Here ViewThatFits uses the first text that fits in one line
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
                
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.width * 0.8)
        .background(.gray)
    }
}

#Preview {
    ViewThatFitss()
}
