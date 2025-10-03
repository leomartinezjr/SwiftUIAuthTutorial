//
//  AuthViewModel.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 10/1/25.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: Users?
    
    init() {}
    
    func signIn(withEmail email: String, password: String) async throws {
        print("Sign in......")
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            
            let user = Users(id: result.user.uid, fullname: fullname, email: email)
            let encodedUser = try Firestore.Encoder().encode(user)
            
            try await Firestore.firestore()
                .collection("users")
                .document(result.user.uid)
                .setData(encodedUser)
            
        } catch {
            print("DEBUG: Falha ao criar um usuário: \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        // lógica de logout
    }
    
    func deleteAccount() {
        // lógica de exclusão
    }
    
    func fetchUser() async {
        // busca de usuário
    }
}
