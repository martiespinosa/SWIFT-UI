//
//  ProfileView.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 23/3/24.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(currentUserGender == "Male" ? .blue.opacity(1 - (Double(currentUserAge ?? 1) / 250)) : .pink.opacity(1 - (Double(currentUserAge ?? 1) / 250)))
                    .frame(width: 100, height: 100)
                
                Text("\(currentUserName ?? "Your name"), \(String(currentUserAge ?? 0))")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }
            .padding(80)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(radius: 10)
            
            Spacer()
            Spacer()
            
            Text("Sign out".uppercased())
                .foregroundStyle(.secondary)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding()
                .onTapGesture {
                    signOut()
                }
        }
        .padding()
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
