//
//  RegistrationView.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 9/30/25.
//

import SwiftUI

struct RegistrationView: View {
    @State var email: String = ""
    @State var nameCompleto: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .padding(.vertical,32)
            
            
            VStack {
                InputView(text: $email,
                          title: "E-mail address",
                          placeholder: "nome@exemplo.com")
                .autocapitalization(.none)//letras minusculas
                
                InputView(text: $nameCompleto,
                          title: "Nome Completo",
                          placeholder: "Escreva seu nome completo")
                
                InputView(text: $password,
                          title: "Senha",
                          placeholder: "Coloque Sua Senha",
                          isSecureFild: true)
                
                InputView(text: $confirmPassword,
                          title: "Confirmar Senha",
                          placeholder: "Confirme Sua Senha",
                          isSecureFild: true)
            }
            .padding(.horizontal)
            .padding(.vertical,0)
            
            Button {
                Task {
                    try await viewModel.createUser(withEmail: email,
                                                   password: password,
                                                   fullname: nameCompleto)
                }
                
                
                
            } label: {
                    HStack{
                        Text("Cadastrar")
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
            
            Button {
                dismiss()
            } label: {
                VStack(spacing:3){
                    Text("Se tiver conta ?")
                    Text("Entre aqui")
                        .fontWeight(.bold)
                        .font(.system(size: 17))
                }
                
                
                
            }
            
            
        }
    }
}
    
    #Preview {
        RegistrationView()
    }

