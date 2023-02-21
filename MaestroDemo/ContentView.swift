//
//  ContentView.swift
//  MaestroDemo
//
//  Created by Ahmed Elzohry on 21/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .accessibilityIdentifier("globe_image")
            
            Text("Hello, world!")
                .accessibilityIdentifier("hello_world")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
