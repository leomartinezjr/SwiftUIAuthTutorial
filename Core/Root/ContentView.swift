//
//  ContentView.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 9/29/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
            Group {
                if viewModel.userSession != nil {
                    ProfileView()
                   // print("qsass")
                }else{
                    LoginView()
                   // print("aiaiaiai")
                }
        }
        
        
        
    }// fim bady
}

#Preview {
    ContentView()
        .environmentObject(AuthViewModel())
}
