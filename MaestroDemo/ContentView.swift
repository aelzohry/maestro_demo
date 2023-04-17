//
//  ContentView.swift
//  MaestroDemo
//
//  Created by Ahmed Elzohry on 21/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var isSheetPresented: Bool = false
    @AppStorage("bool-arg") var boolArg: Bool = false
    @AppStorage("string-arg") var stringArg: String = ""
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .accessibilityIdentifier("globe_image")
            
            Text("Hello, world!")
                .accessibilityIdentifier("hello_world")
            
            Text("Bool arg: \(boolArg.description)")
            Text("String arg: \(stringArg)")
            
            Button("Info") {
                isSheetPresented = true
            }
            .accessibilityIdentifier("info_button")
        }
        .padding()
        .sheet(isPresented: $isSheetPresented) {
            InfoView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
