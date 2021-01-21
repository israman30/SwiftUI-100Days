//
//  ContentView.swift
//  Environment-modifiers
//
//  Created by Israel Manzo on 1/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .blur(radius: 0)
            Text("Hola Mundo")
            Text("Ciao Mondo")
        }
        .font(.largeTitle)
        .padding()
        .blur(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
