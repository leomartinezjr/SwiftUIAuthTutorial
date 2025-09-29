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
                Spacer()
                
                // sight bottom
                
                
                
                
                
            }
            
        }
    }
}

#Preview {
    LoginView()
}
