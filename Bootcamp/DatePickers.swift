//
//  DatePickers.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 12/3/24.
//

import SwiftUI

struct DatePickers: View {
    
    @State var dateSelected: Date = Date()
    
    var body: some View {
        VStack {
            DatePicker("Select a date", selection: $dateSelected)
                .padding()
                .padding(.horizontal)
            
            
        }
    }
}

#Preview {
    DatePickers()
}
