//
//  Backgronds&Overlays.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 23/2/24.
//

import SwiftUI

struct Backgronds_Overlays: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .foregroundColor(.white)
//            .background(
//                Circle()
//                    .fill(LinearGradient(
//                        colors: [.red, .blue],
//                        startPoint: .leading,
//                        endPoint: .trailing))
//                    .frame(width: 120, height: 120)
//                    .background(
//                        Circle()
//                            .fill(LinearGradient(
//                                colors: [.blue, .red],
//                                startPoint: .leading,
//                                endPoint: .trailing))
//                            .frame(width: 150, height: 150)
//                    )
//            )
        
        
//        Circle()
//            .fill(.green)
//            .frame(width: 120, height: 120)
//            .overlay(
//                Text("23")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.brown)
//                    .frame(width: 150, height: 150)
//            )
        
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .bottomTrailing
//            )
//            .background(
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 150, height: 150)
//                , alignment: .topLeading
//            )
        
        
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(.green)
                    .frame(width: 90, height: 90)
                    .shadow(color: .green, radius: 30)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 30, height: 30)
                            .shadow(color: .blue, radius: 10)
                            .overlay(
                                Text("8")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                        , alignment: .bottomTrailing
                    )
            )
            
        
    }
}

#Preview {
    Backgronds_Overlays()
}
