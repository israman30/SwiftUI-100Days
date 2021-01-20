//
//  Logistics_IntroApp.swift
//  Logistics-Intro
//
//  Created by Israel Manzo on 1/18/21.
//

import SwiftUI

@main
struct Logistics_IntroApp: App {
    let game = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(vm: game)
        }
    }
}
