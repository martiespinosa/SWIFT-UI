//
//  Grids.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 28/2/24.
//

import SwiftUI

struct Grids: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.brown)
                .frame(height: 400)
                .overlay(
                    Text("Username")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                )
            
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header: 
                        Text("Section 1")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.green)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                    ) {
                        ForEach(0..<21) { index in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.green)
                                .frame(height: 120)
                        }
                    }
                    
                    Section(header: 
                        Text("Section 2")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                    ) {
                        ForEach(0..<21) { index in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.blue)
                                .frame(height: 120)
                        }
                    }
                    
                }
            )
        }
        .padding()
    }
}

#Preview {
    Grids()
}
