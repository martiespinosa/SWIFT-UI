//
//  HVZStacks.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 23/2/24.
//

import SwiftUI

struct HVZStacks: View {
    
    let name: String
    let symbol: String
    let shortDescription: String
    let longDescription: String
    let image: String
    
    var color1: Color
    var color2: Color
    
    init(name: String, symbol: String, shortDescription: String, longDescription: String, image: String) {
        self.name = name
        self.symbol = symbol
        self.shortDescription = shortDescription
        self.longDescription = longDescription
        self.image = image
        
        if shortDescription.split(separator: " ").first == "Cantante" {
            self.color1 = Color(red: 0.9843137255, green: 0.3607843137, blue: 0.4549019608)
            self.color2 = Color(red: 0.9803921569, green: 0.1411764706, blue: 0.2352941176)
        } else if shortDescription.split(separator: " ").first == "Artista" {
            self.color1 = Color(red: 0.4549019608, green: 0.9843137255, blue: 0.3607843137)
            self.color2 = Color(red: 0.2352941176, green: 0.9803921569, blue: 0.1411764706)
        } else {
            self.color1 = Color(red: 0.3607843137, green: 0.4549019608, blue: 0.9843137255)
            self.color2 = Color(red: 0.1411764706, green: 0.2352941176, blue: 0.9803921569)
        }
    }
    
    var body: some View {
    
        VStack(alignment: .leading) {
            
            HStack {
                Text("\(name)")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Image(systemName: "\(symbol)")
                    .font(.title)
            }
            
            Text("\(shortDescription)")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                .italic()
            
            Text("\(longDescription)")
                .font(.footnote)
            
            Image("\(image)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .cornerRadius(25)
        }
        .padding(15)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    color1,
                    color2
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
    HVZStacks(
        name: "Usher",
        symbol: "music.mic",
        shortDescription: "Cantante estadounidense",
        longDescription: "Usher Raymond IV, más conocido como Usher, es un cantante, compositor y productor de música estadounidense.",
        image: "usher")
    
//    HVZStacks(
//        name: "Ilia Topuria",
//        symbol: "trophy.fill",
//        shortDescription: "Artista marcial mixto hispanogeorgiano",
//        longDescription: "Ilia Topuria es un peleador de MMA georgiano y español que compite en la UFC, donde es el actual Campeón Mundial de Peso Pluma.",
//        image: "ilia")
    
//    HVZStacks(
//        name: "Javier Milei",
//        symbol: "seal.fill",
//        shortDescription: "Economista y político argentino",
//        longDescription: "Javier Gerardo Milei es un economista, político y docente argentino, actual presidente de la Nación Argentina desde el 10 de diciembre de 2023 y líder del espacio político La Libertad Avanza.",
//        image: "milei")
    
}
