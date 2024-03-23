//
//  AsyncImges.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 23/3/24.
//

import SwiftUI

struct AsyncImages: View {
    
    @State var url = URL(string: "https://thispersondoesnotexist.com")
    @State private var refreshID = UUID()
    
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("This person does not exist")
                .font(.title)
                .fontWeight(.semibold)
            AsyncImage(url: url, content: { Image in
                Image
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.width * 0.85)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }, placeholder: {
                ProgressView()
            })
            Spacer()
            Spacer()
            Button(action: {
                refreshID = UUID()
            }, label: {
                Text("Refresh")
            })
        }
        .id(refreshID)
    }
}

#Preview {
    AsyncImages()
}
