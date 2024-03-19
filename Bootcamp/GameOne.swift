//
//  GameOne.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 2/3/24.
//

import SwiftUI

struct GameOne: View {
    
    // MARK: - PROPERTIES
    
    @State var blueOpacity: Double = 0.3
    @State var greenOpacity: Double = 0.3
    @State var yellowOpacity: Double = 0.3
    @State var redOpacity: Double = 0.3
    
    @State var round: Int = 0
    @State var patternList: [Int] = [] {
        didSet {
            print(patternList)
        }
    }
    @State var userPatternList: [Int] = [] {
        didSet {
            print(userPatternList)
        }
    }
    @State var buttonsDisabled: Bool = true
    @State var roundColor: Color = .primary
    @State var gameOver: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack() {
            header
            Spacer()
            mainButtons
            Spacer()
            footer
        }
        .onAppear {
            startGame()
        }
    }
    
    // MARK: - SOME VIEWS
    
    var header: some View {
        Text("SIMON SAYS")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .opacity(0.8)
    }
    
    var mainButtons: some View {
        VStack {
            HStack {
                Button(action: {
                    userPatternList.append(1)
                    buttonFlash(buttonOpacity: $blueOpacity)
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.blue.opacity(blueOpacity))
                        .frame(width: 150, height: 150)
                        .disabled(buttonsDisabled)
                        .allowsHitTesting(!buttonsDisabled)
                })
                Button(action: {
                    userPatternList.append(2)
                    buttonFlash(buttonOpacity: $greenOpacity)
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.green.opacity(greenOpacity))
                        .frame(width: 150, height: 150)
                        .disabled(buttonsDisabled)
                        .allowsHitTesting(!buttonsDisabled)
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
                        .allowsHitTesting(!buttonsDisabled)
                })
                Button(action: {
                    userPatternList.append(4)
                    buttonFlash(buttonOpacity: $redOpacity)
                }, label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.red.opacity(redOpacity))
                        .frame(width: 150, height: 150)
                        .disabled(buttonsDisabled)
                        .allowsHitTesting(!buttonsDisabled)
                })
            }
        }
    }
    
    var footer: some View {
        VStack {
            Text("ROUND")
                .foregroundColor(roundColor)
                .font(.title2)
                .fontWeight(.semibold)
                .opacity(0.8)
            Text("\(round)")
                .foregroundColor(roundColor)
                .font(.largeTitle)
                .fontWeight(.black)
                .opacity(0.8)
        }
    }
    
    // MARK: - FUNCTIONS
    
    func buttonFlash(buttonOpacity: Binding<Double>) {
        withAnimation {
            buttonOpacity.wrappedValue = 1
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation {
                buttonOpacity.wrappedValue = 0.3
            }
        }
    }

    
    func startGame() {
        pattern()
    }
    
    func pattern() {
        roundColor = .primary
        buttonsDisabled = true
        round += 1
        
        let randomSquare = Int.random(in: 1...4)
        patternList.append(randomSquare)
        
        // Llamar a flashSequence para mostrar la secuencia
        flashSequence(patternList: patternList)
    }


    func flashSequence(patternList: [Int]) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            for (index, num) in patternList.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 1.0) {
                    if num == 1 {
                        buttonFlash(buttonOpacity: $blueOpacity)
                    } else if num == 2 {
                        buttonFlash(buttonOpacity: $greenOpacity)
                    } else if num == 3 {
                        buttonFlash(buttonOpacity: $yellowOpacity)
                    } else if num == 4 {
                        buttonFlash(buttonOpacity: $redOpacity)
                    }
                }
            }
        }
        userTurn()
    }

    
    
    func userTurn() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            while true {
                if patternList.count == userPatternList.count {
                    checkPattern()
                    break
                } else {
                    buttonsDisabled = false
                    userTurn()
                    break
                }
            }
        }
    }

    
    func checkPattern() {
        buttonsDisabled = true
        if patternList.elementsEqual(userPatternList) {
            roundColor = .green
            userPatternList = []
            pattern()
        } else {
            roundColor = .red
            gameOver = true
        }
    }
}

// MARK: - PREVIEW

#Preview {
    GameOne()
}
