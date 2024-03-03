//
//  GameOne.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 2/3/24.
//

import SwiftUI

struct GameOne: View {
    
    @State var blueOpacity: Double = 0.3
    @State var greenOpacity: Double = 0.3
    @State var yellowOpacity: Double = 0.3
    @State var redOpacity: Double = 0.3
    
    @State var round: Int = 0
    @State var patternList: [Int] = []
    @State var userPatternList: [Int] = [] {
        didSet {
            print(userPatternList)
        }
    }
    @State var buttonsDisabled: Bool = true
    @State var roundColor: Color = Color.white
    @State var gameOver: Bool = false
    
    var body: some View {
        VStack() {
            // View
            Text("SIMON SAYS")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .opacity(0.8)
            Spacer()
            HStack {
                Button(action: {
                    userPatternList.append(1)
                    buttonFlash(buttonOpacity: $blueOpacity)
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.blue.opacity(blueOpacity))
                        .frame(width: 150, height: 150)
                        .disabled(buttonsDisabled)
                })
                Button(action: {
                    userPatternList.append(2)
                    buttonFlash(buttonOpacity: $greenOpacity)
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.green.opacity(greenOpacity))
                        .frame(width: 150, height: 150)
                        .disabled(buttonsDisabled)
                })
            }
            HStack {
                Button(action: {
                    userPatternList.append(3)
                    buttonFlash(buttonOpacity: $yellowOpacity)
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.yellow.opacity(yellowOpacity))
                        .frame(width: 150, height: 150)
                        .disabled(buttonsDisabled)
                })
                Button(action: {
                    userPatternList.append(4)
                    buttonFlash(buttonOpacity: $redOpacity)
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.red.opacity(redOpacity))
                        .frame(width: 150, height: 150)
                        .disabled(buttonsDisabled)
                })
            }
            Spacer()
            Text("ROUND \(round)")
                .foregroundColor(roundColor)
                .font(.title)
                .fontWeight(.semibold)
                .opacity(0.8)
        }
        
        // Logic
        .onAppear {
            startGame()
        
        }
    }
    
    func buttonFlash(buttonOpacity: Binding<Double>) {
        withAnimation {
            buttonOpacity.wrappedValue = 1
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                buttonOpacity.wrappedValue = 0.3
            }
        }
    }

    
    func startGame() {
        pattern()
    }
    
    func pattern() {
        roundColor = .white
        buttonsDisabled = true
        round += 1
        
        // Añadir un nuevo elemento aleatorio a patternList
        let randomSquare = Int.random(in: 1...4)
        patternList.append(randomSquare)
        
        // Llamar a flashSequence para mostrar la secuencia
        flashSequence(index: 0)
    }


    func flashSequence(index: Int) {
        guard index < round else {
            // Cuando se alcanza el final de la secuencia, iniciar el turno del usuario
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                userTurn()
            }
            return
        }
        
        let randomSquare = Int.random(in: 1...4)
        patternList.append(randomSquare)
        
        switch randomSquare {
        case 1:
            buttonFlash(buttonOpacity: $blueOpacity)
        case 2:
            buttonFlash(buttonOpacity: $greenOpacity)
        case 3:
            buttonFlash(buttonOpacity: $yellowOpacity)
        case 4:
            buttonFlash(buttonOpacity: $redOpacity)
        default:
            break
        }
        
        // Llamar a la función de forma recursiva después de un segundo
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            flashSequence(index: index + 1)
        }
    }

    
    
    func userTurn() {
        DispatchQueue.main.async {
            if patternList.count == userPatternList.count {
                checkPattern()
            } else {
                buttonsDisabled = false
                userTurn()
            }
        }
    }

    
    func checkPattern() {
        if patternList.elementsEqual(userPatternList) {
            userPatternList = []
            roundColor = .green
            pattern()
        } else {
            roundColor = .red
            gameOver = true
        }
    }
}

#Preview {
    GameOne()
}
