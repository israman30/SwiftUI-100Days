//
//  ContentView.swift
//  CreatingView-Loop
//
//  Created by Israel Manzo on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    let users = ["Joh Doe", "Peter Parker", "Fred Flinstone", "Thom the Cat"]
    @State private var selectedUser = "Jim"
    
    var body: some View {
        VStack {
            
            Picker("Select a user", selection: $selectedUser) {
                ForEach(0..<users.count) {
                    Text(self.users[$0])
                }
            }
            Text("Seleceted Student: #\(selectedUser)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
