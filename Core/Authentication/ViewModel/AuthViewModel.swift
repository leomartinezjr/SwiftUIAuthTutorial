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

@MainActor
class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: Users?
    
    init() {
        self.userSession = Auth.auth().currentUser // verifica se ha um usuario no banco de dado se tiover carrega as info
        Task{
            
            await fetchUser()
        }
        
    }
    
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
                .setData(encodedUser) // aqui cria a colecao User no data e cria o user ID e set coloca as info
            await fetchUser()
            
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
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else { return }
        self.currentUser = try? snapshot.data(as:Users.self)
        
        print ("DEBUG: O Usuario é \(self.currentUser)")
        
        
        
        
    }
}
