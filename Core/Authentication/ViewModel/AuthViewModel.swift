//
//  AuthViewModel.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 10/1/25.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: Users?
    
    init(){
        
    }
    
    func signIn(whithEmail email:String, Password password:String) async throws {
        print("Sign in......")
    }
    
    func createUser(whithEmail email:String, Password password:String, fullname:String) async throws {
        print("Cretar usaer......")
    }
    
    func signOut() {
        
    }
    
    func deleteAccount(){
        
    }
        
    func FetchUser() async {
        
    }
    
    
}//fim

