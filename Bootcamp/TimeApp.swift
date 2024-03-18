//
//  TimeApp.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 13/3/24.
//

import SwiftUI

struct TimeApp: View {
    
    // MARK: - PROPERTIES
    
    @State private var currentDate: Date = Date()
    @State private var showSeconds: Bool = true
    @State private var textColor: Color = .secondary
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            // Características de la hora:
            /*
             - tamaño del 0.2 del ancho de la pantalla
             - tipografia redondeada
             - al pulsar la hora mustra/oculta los segundos
             */
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
                    animateColorChange(color: .secondary, animation: .easeInOut(duration: 0.5))
                }
                
                currentDate = Date()
            }
            // Agregar el temporizador al bucle de ejecución actual
            RunLoop.current.add(timer, forMode: .common)
        }
    }
    
    // MARK: - FUNCTIONS
    
    /// Changes the color with an animation.
    ///
    /// When you call this function you pass the color and animatin by parameter and it will change with the animation you specified to the color you specified.
    /// You can also specify the duration of the animation inside the animation parenthesis.
    /// It doesn't return anithing.
    /// ```
    /// animateColorChange(color: .green, animation: .easeInOut(duration: 0.5))
    /// ```
    ///
    /// - Warning: Be aware to to add the animation.
    /// - Parameters:
    ///   - color: This is the color you want to use
    ///   - animation: This is the animation you want to use while changing the color
    /// - Returns: Void
    private func animateColorChange(color: Color, animation: Animation) {
        withAnimation(animation) {
            textColor = color
        }
    }
    
    /// Show or hide the seconds depending of showSeconds variable
    var formattedTime: String {
        let formatter = DateFormatter()
        formatter.timeStyle = showSeconds ? .medium : .short
        return formatter.string(from: currentDate)
    }
}

// MARK: - PREVIEW

#Preview {
    TimeApp()
}
