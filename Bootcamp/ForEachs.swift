//
//  ForEachs.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 27/2/24.
//

import SwiftUI

struct ForEachs: View {
    
    let fruits: [String] = ["apple", "orange", "banana"]
    
    var body: some View {
        VStack {
            ForEach(0..<3) { index in
                Text("\(index): \(fruits[index])")
            }
            
//            ForEach(fruits.indices) { index in
//                Text("\(fruits[index])")
//            }
        }
    }
}

#Preview {
    ForEachs()
}
