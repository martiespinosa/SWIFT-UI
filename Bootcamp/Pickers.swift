//
//  Pickers.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 11/3/24.
//

import SwiftUI

struct Pickers: View {
    
    @State var hoursSelection: Int = 0
    @State var minutesSelection: Int = 0
    
    @State var options: [Int] = [1, 2, 3]
    @State var optionSelected: Int = 1
    
    var body: some View {
        VStack(spacing: 200) {
//            Picker(
//                selection: $optionSelected,
//                label: Text("Menu picker")
//            ) {
//                ForEach(options, id: \.self) { option in
//                    HStack {
//                        Text("\(option)")
//                        Image(systemName: "car")
//                    }
//                    .tag(option)
//                }
//                .pickerStyle(MenuPickerStyle())
//            }
            
            Picker(
                selection: $optionSelected,
                label: Text("Segmented picker"),
                content: {
                    ForEach(options, id: \.self) { option in
                        Text("\(option)")
                            .tag(option)
                    }
                }
                
            )
            .pickerStyle(SegmentedPickerStyle())
            
            HStack {
                Picker(
                    selection: $hoursSelection,
                    label: Text("Hours")
                ) {
                    ForEach(0..<24) { hour in
                        Text("\(hour)")
                            .tag(hour)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                
                Picker(
                    selection: $minutesSelection,
                    label: Text("Minutes")
                ) {
                    ForEach(0..<60) { minute in
                        Text("\(minute)")
                            .tag(minute)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    Pickers()
}
