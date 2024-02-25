//
//  Spacer.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 25/2/24.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            Spacer()
            
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 100)
        }
        .padding(.vertical)
        	
        
        HStack(spacing: 0) {
            Spacer()
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 100)
            
            Spacer()
        }
        .padding(.vertical)
        
        
        HStack(spacing: 0) {
            Spacer(minLength: 0)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            Spacer()
            
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 100)
            
            Spacer(minLength: 0)
        }
        .padding(.vertical)
    }
}

#Preview {
    Spacers()
}
