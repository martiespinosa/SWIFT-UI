//
//  Steppers.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 12/3/24.
//

import SwiftUI

struct Steppers: View {
    
    @State var stepperValue: Int = 0
    
    var body: some View {
        Stepper("Steper: \(stepperValue)", value: $stepperValue)
            .padding(.horizontal, 50)
    }
}

#Preview {
    Steppers()
}
