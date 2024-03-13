//
//  TimeApp.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 13/3/24.
//

import SwiftUI

struct TimeApp: View {
    
    @State private var currentDate: Date = Date()
    @State private var showSeconds: Bool = true
    @State private var textColor: Color = .primary
    
    var body: some View {
        VStack {
            Text("\(formattedTime)")
                .font(.system(size: UIScreen.main.bounds.width * 0.2, design: .rounded))
                .foregroundColor(textColor)
                .bold()
                .persistentSystemOverlays(.hidden)
                .onTapGesture {
                    showSeconds.toggle()
                }
        }
        .onAppear {
            // Iniciar un temporizador para actualizar la hora cada segundo
            let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                let calendar = Calendar.current
                let seconds = calendar.component(.second, from: currentDate)
                
                if seconds == 59 {
                    animateColorChange(color: .green, animation: .easeInOut(duration: 0.5))
                } else {
                    animateColorChange(color: .primary, animation: .easeInOut(duration: 0.5))
                }
                
                currentDate = Date()
            }
            // Agregar el temporizador al bucle de ejecución actual
            RunLoop.current.add(timer, forMode: .common)
        }
    }
    
    private func animateColorChange(color: Color, animation: Animation) {
        withAnimation(animation) {
            textColor = color
        }
    }
    
    var formattedTime: String {
        let formatter = DateFormatter()
        formatter.timeStyle = showSeconds ? .medium : .short
        return formatter.string(from: currentDate)
    }
}

#Preview {
    TimeApp()
}
