//
//  ContentView.swift
//  Buttons
//
//  Created by Israel Manzo on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Button(action: {
                print("Hello World")
            }, label: {
                Text("Button")
                    .font(.system(size: 25))
                    .font(.title)
            })
            
            Button(action: {
                
            }, label: {
                HStack {
                    Image(systemName: "pencil")
                    Text("Tap me")
                }
            })
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.title2)
            .cornerRadius(10)
            
            Button(action: {
                
            }, label: {
                VStack {
                    Image(systemName: "pencil")
                    Text("Tap me")
                }
            })
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.title2)
            .cornerRadius(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
