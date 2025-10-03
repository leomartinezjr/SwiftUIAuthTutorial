//
//  SwiftUIAuthTutorialApp.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 9/29/25.
//

import SwiftUI

@main
struct SwiftUIAuthTutorialApp: App {
    @StateObject var ViewModel = AuthViewModel() //isso em um local e podera ser usado nas outras views
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ViewModel)
        }
    }
}
