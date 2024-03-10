//
//  Toggles.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 10/3/24.
//

import SwiftUI

struct Toggles: View {
    
    @State var avatarIsOn: Bool = true
    @State var cuentaIsOn: Bool = true
    @State var privacidadIsOn: Bool = false
    @State var chatsIsOn: Bool = false
    @State var notificacionesIsOn: Bool = false
    @State var almacenamientoYDatosIsOn: Bool = true
    
    var settingNames: [String] = ["Avatar", "Cuenta", "Privacidad", "Chats", "Notificaciones", "Almacenamiento y datos"]
    @State var toggles: [Bool] = []
    
    init() {
        _toggles = State(initialValue: [avatarIsOn, cuentaIsOn, privacidadIsOn, chatsIsOn, notificacionesIsOn, almacenamientoYDatosIsOn])
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ForEach(settingNames.indices, id: \.self) { index in
                    Toggle(isOn: $toggles[index], label: {
                        Text(settingNames[index])
                    })
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    Toggles()
}
