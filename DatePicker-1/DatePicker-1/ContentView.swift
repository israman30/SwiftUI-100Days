//
//  ContentView.swift
//  DatePicker-1
//
//  Created by Israel Manzo on 1/22/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeUp = Date()
    
    var body: some View {
        Form {
            
            DatePicker("Enter a date", selection: $wakeUp, in: Date()...)
                .labelsHidden()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
