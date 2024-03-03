//
//  Extracts.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 2/3/24.
//

import SwiftUI

struct Extracts: View {
    
    @State var buttonSymbol: String = "heart.fill"
    
    var body: some View {
        someContent
        
        ButtonView(buttonSymbol: $buttonSymbol)
    }
    
    var someContent: some View {
        VStack {
            ForEach(0..<3) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(.blue)
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var buttonSymbol: String
    
    var body: some View {
        Button(action: {
            buttonSymbol = symbolLogic()
        }, label: {
            Circle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .overlay(
                    Image(systemName: buttonSymbol)
                        .font(.largeTitle)
                        .foregroundColor(.primary)
                )
        })
    }
    
    func symbolLogic() -> String {
        if buttonSymbol == "heart.fill" {
            return "star.fill"
        } else {
            return "heart.fill"
        }
    }
}

#Preview {
    Extracts()
}
