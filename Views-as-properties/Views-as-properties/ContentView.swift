//
//  ContentView.swift
//  Views-as-properties
//
//  Created by Israel Manzo on 1/21/21.
//

import SwiftUI

struct ContentView: View {
    
    var viewProp1: some View {
        Text("View Property One")
    }
    let viewProp2 = Text("View Propery Two")
    
    var body: some View {
        VStack(spacing: 10) {
            viewProp1
                .foregroundColor(.red)
            viewProp2
                .foregroundColor(.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
