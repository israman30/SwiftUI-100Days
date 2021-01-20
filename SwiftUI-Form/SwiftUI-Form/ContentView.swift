//
//  ContentView.swift
//  SwiftUI-Form
//
//  Created by Israel Manzo on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            Section {
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
            }
            Section {
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
            }
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
