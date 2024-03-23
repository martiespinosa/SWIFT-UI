//
//  IntroView.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 21/3/24.
//

import SwiftUI

struct IntroView: View {
    
    // MARK: - PROPERTIES
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    // MARK: BODY
    
    var body: some View {
        ZStack {
            // background
            RadialGradient(
                //colors: [.blue, .cyan],
                //colors: [.green, .clear],
                colors: [.green, .mint],
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height + 300
            )
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .bottom)))
            }
        }
        .animation(.spring(), value: currentUserSignedIn)
    }
}
 
#Preview {
    IntroView()
}
