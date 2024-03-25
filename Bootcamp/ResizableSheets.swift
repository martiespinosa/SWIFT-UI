//
//  ResizableSheets.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 25/3/24.
//

import SwiftUI

struct ResizableSheets: View {
    
    @State private var showSheet: Bool = false
//    @State private var detents: PresentationDetent = .medium
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MySheet()
//            MySheet(detents: $detents)
//                .presentationDetents([.medium, .large, .fraction(0.3), .height(600)], selection: $detents)
                .presentationDetents([.medium, .large])
        }
    }
}

struct MySheet: View {
    
//    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
//            VStack(spacing: 30) {
//                Button("Large") {
//                    detents = .large
//                }
//                
//                Button("Medium") {
//                    detents = .medium
//                }
//                
//                Button("30%") {
//                    detents = .fraction(0.3)
//                }
//                
//                Button("600px") {
//                    detents = .height(600)
//                }
//            }
            
            Text("Hello world")
                .font(.headline)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ResizableSheets()
}
