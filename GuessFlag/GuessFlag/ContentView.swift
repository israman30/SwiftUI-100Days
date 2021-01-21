//
//  ContentView.swift
//  GuessFlag
//
//  Created by Israel Manzo on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.8, blue: 0).edgesIgnoringSafeArea(.all)
            Text("Hello, world!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
