//
//  LoginView.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 9/29/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        NavigationStack{
            VStack{
                //imagem
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .padding(.vertical,32)
                
                //campos
                VStack {
                    InputView(text: $email,
                              title: "E-mail address",
                              placeholder: "nome@exemplo.com")
                    .autocapitalization(.none)//letras minusculas
                    InputView(text: $password,
                              title: "Senha",
                              placeholder: "Coloque Sua Senha",
                              isSecureFild: true)
                }
                .padding(.horizontal)
                .padding(.vertical,10)
                
                //sign botao
                Button {
                    
                    Task{
                        try await viewModel.signIn(withEmail: email, password: password)
                    }
                    
                    
                    print("Loggin para usuario")
                }label:{
                        HStack{
                            Text("Entrar")
                                .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 32,height: 48)
                    }
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                    .padding(.top, 30)
                
                
                
                
                
                Spacer()
                
                // sign up bottom
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label:{
                    HStack(spacing:3){
                        Text("Não tem conta ?")
                        Text("Cadastre-se aqui")
                            .fontWeight(.bold)
                            .font(.system(size: 17))
                    }
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
