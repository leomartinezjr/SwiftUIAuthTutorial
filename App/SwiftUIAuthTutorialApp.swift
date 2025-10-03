//
//  SwiftUIAuthTutorialApp.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 9/29/25.
//

import SwiftUI
import Firebase

@main
struct SwiftUIAuthTutorialApp: App {
    @StateObject var ViewModel = AuthViewModel() //isso em um local e podera ser usado nas outras views
    
    init(){
        
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ViewModel)
        }
    }
}
