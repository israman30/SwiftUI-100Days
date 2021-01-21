//
//  ContentView.swift
//  Conditional-Modifier
//
//  Created by Israel Manzo on 1/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var changeColor = false
    
    var body: some View {
        Button("Hello World") {
            self.changeColor.toggle()
        }
        .foregroundColor(.white)
        .padding()
        .background(Color(changeColor ? .red : .blue))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
