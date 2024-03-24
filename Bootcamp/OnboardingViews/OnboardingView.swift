//
//  OnboardingView.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 21/3/24.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    
    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    @State var onboardingState: Int = 0
    let nextTransition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    let backTransition: AnyTransition = .asymmetric(
        insertion: .move(edge: .leading),
        removal: .move(edge: .trailing))
    @State var isGoingFoward: Bool = true
    
    // for onboarding inputs
    @State var name: String = ""
    @FocusState private var nameIsFocused: Bool
    @State var age: Double = 30
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(isGoingFoward ? nextTransition : backTransition)
                case 1:
                    addNameSection
                        .transition(isGoingFoward ? nextTransition : backTransition)
                case 2:
                    addAgeSection
                        .transition(isGoingFoward ? nextTransition : backTransition)
                case 3:
                    addGenderSection
                        .transition(isGoingFoward ? nextTransition : backTransition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .transition(isGoingFoward ? nextTransition : backTransition)
                }
            }
            
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(25)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
}

#Preview {
    OnboardingView()
}

// MARK: - COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        HStack {
            if onboardingState == 0 {
                Text("Sing up".uppercased())
                    .font(.headline)
                    .foregroundStyle(.secondary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .animation(nil, value: onboardingState)
                    .onTapGesture {
                        handleNextButtonPressed()
                    }
            } else {
                Image(systemName: "arrow.left")
                    .font(.headline)
                    .foregroundStyle(.secondary)
                    .frame(width: 55, height: 55)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .onTapGesture {
                        handleBackButtonPressed()
                    }
                
                Text(
                    onboardingState == 0 ? "Sing up".uppercased() :
                        onboardingState == 3 ? "Finish".uppercased() :
                        "Next".uppercased()
                )
                .font(.headline)
                .foregroundStyle(.secondary)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .animation(nil, value: onboardingState)
                .onTapGesture {
                    handleNextButtonPressed()
                }
            }
        }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "airplane.circle.fill") // here would be the logo but we are going to use just an sf symbol
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 160)
                .foregroundStyle(.white)
                .shadow(radius: 10)
            
            Text("Find your flight")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(.white)
                    , alignment: .bottom
                )
            
            Text("This is the #1 app for tracking flights and makeing your life easier while travelling, helping you in the hole process: since buing tickets to convert your cash.")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
//        .background(.thinMaterial)
//        .clipShape(RoundedRectangle(cornerRadius: 15))
//        .padding()
//        .shadow(radius: 10)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            TextField("Your name is...", text: $name)
                .focused($nameIsFocused)
                .submitLabel(.done)
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Slider(
                value: $age,
                in: 18...99,
                step: 1
            )
            .tint(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("Your are a")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Picker(selection: $gender) {
                Text("Select a gender").tag("")
                    .foregroundStyle(.white)
                Text("Male").tag("Male")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                Text("Female").tag("Female")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
            } label: {
                Text("Select a gender")
            }
            .pickerStyle(.wheel)

            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
}

// MARK: - FUNCTIONS

extension OnboardingView {
    
    func handleNextButtonPressed() {
        isGoingFoward = true
        
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long 😪")
                return
            }
        case 3:
            guard gender.count > 0 else {
                showAlert(title: "Please select a gender before you move forward 😕")
                return
            }
        default:
            break
        }
        
        // GO TO NEXT SECTION
        if onboardingState == 3 {
            singIn()
        } else {
            nameIsFocused = false
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func handleBackButtonPressed() {
        nameIsFocused = false
        isGoingFoward = false
        withAnimation(.spring()) {
            onboardingState -= 1
        }
    }
    
    func singIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert = true
    }
    
}
