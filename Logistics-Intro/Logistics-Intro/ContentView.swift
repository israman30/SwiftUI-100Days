//
//  ContentView.swift
//  Logistics-Intro
//
//  Created by Israel Manzo on 1/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
            Text("😎")
                .frame(width: 200, height: 200)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
