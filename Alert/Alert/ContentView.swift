//
//  ContentView.swift
//  Alert
//
//  Created by Israel Manzo on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    
    var body: some View {
        Button(action: {
            self.showAlert = true
        }, label: {
            Text("Tap for alert")
        })
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Hello SwiftUI"), message: Text("This is a test alert"), dismissButton: .default(Text("Ok")))
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
