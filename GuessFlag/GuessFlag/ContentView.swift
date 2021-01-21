//
//  ContentView.swift
//  GuessFlag
//
//  Created by Israel Manzo on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack {
                Image(systemName: "pencil")
                Text("Tap me")
            }
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
