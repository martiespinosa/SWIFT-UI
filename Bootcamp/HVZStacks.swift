//
//  HVZStacks.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 23/2/24.
//

import SwiftUI

struct HVZStacks: View {
    var body: some View {
        
    
        // As we can see in the next example, we can do the same using ZStacks or Backgrounds & Overlays. For 1, 2 or 3 layers maybe is better using backfround and overlays, and for more layers maybe is better using ZStacks.
        
//        VStack(spacing: 50) {
//            ZStack {
//                Circle()
//                    .frame(width: 100, height: 100)
//                Text("1")
//                    .font(.title)
//                    .foregroundColor(.white)
//            }
//            
//            Text("1")
//                .font(.title)
//                .foregroundColor(.white)
//                .background(
//                    Circle()
//                        .frame(width: 100, height: 100)
//                )
//        }
        
        
//        VStack {
//            Circle()
//                .fill(.red)
//                .frame(width: 100, height: 100)
//            
//            Circle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//            
//            Circle()
//                .fill(.green)
//                .frame(width: 100, height: 100)
//        }
        
        
//        VStack(alignment: .trailing, spacing: 0, content: {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150, height: 150)
//        })
        
        
//        HStack(alignment: .top, spacing: 0, content: {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150, height: 150)
//        })
        
        
//        ZStack(alignment: .bottomLeading) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 150, height: 150)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//        }
        
        
//        ZStack(alignment: .topLeading) {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 650)
//            
//            VStack(alignment: .leading, spacing: 50) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 100, height: 100)
//                
//                Rectangle()
//                    .fill(.orange)
//                    .frame(width: 300, height: 200)
//                
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 50, height: 50)
//                    
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 100, height: 100)
//                    
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 50, height: 50)
//                }
//                .background(.white)
//            }
//            .background(.black)
//        }
        
    
        VStack(alignment: .leading) {
            
            HStack {
                Text("Usher")
                    .textCase(.uppercase)
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "music.mic")
                    .font(.title)
            }
            
            Text("Cantante estadounidense")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                .italic()
            
            Text("Usher Raymond IV, más conocido como Usher, es un cantante, compositor y productor de música estadounidense.")
                .font(.footnote)
            
            Image("usher")
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(25)
        }
        .padding(10)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.9843137255, green: 0.3607843137, blue: 0.4549019608),
                    Color(red: 0.9803921569, green: 0.1411764706, blue: 0.2352941176)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(25)
        .frame(width: 270)
    
        
    }
}

#Preview {
    HVZStacks()
}
