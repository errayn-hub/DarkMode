//
//  ContentView.swift
//  DarkMode
//
//  Created by ErRayn on 27.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var darkMode: Bool = false
    @State private var currentMode: ColorScheme = .light
    
    var body: some View {
        NavigationView {
            Form {
                
                Toggle("Dark Mode", isOn: $darkMode)
                    .onChange(of: darkMode) {value in
                        if darkMode == true {
                            currentMode = .dark
                        } else {
                            currentMode = .light
                        }
                    }
                
            }.navigationTitle("Settings ")
                .preferredColorScheme(currentMode)
                .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
