//
//  ContentView.swift
//  State
//
//  Created by Israel Manzo on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    
    var body: some View {
        Button(action: {
            self.count += 1
        }, label: {
            Text("State Button \(count)").font(.system(size: 20, weight: .bold, design: .rounded))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
