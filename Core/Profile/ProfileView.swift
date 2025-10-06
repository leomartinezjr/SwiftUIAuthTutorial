//
//  ProfileView.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 9/30/25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
       if let user = viewModel.currentUser {
           List{
               Section{
                   HStack {
                       Text(user.initials)
                           .font(.title)
                           .fontWeight(.bold)
                           .foregroundColor(.white)
                           .frame(width: 72, height: 72)
                           .background(Color(.systemGray3))
                           .cornerRadius(36)
                       
                       VStack(alignment: .leading, spacing: 4){
                           Text(user.fullname)
                               .font(.headline)
                           Text(user.email)
                               .foregroundColor(.secondary)
                               .accentColor(.gray)
                       }
                   }
                   
                   
                   
               }
               Section("General"){
                   HStack {
                       SetingsRowView(imageName: "gear", title: "Versão", tintColor: Color(.systemGray))
                       Spacer()
                       
                       Text("v1.0")
                           .foregroundColor(.secondary)
                   }
                   
               }
               Section("Conta"){
                   Button{
                       print("sair do app")
                   }label: {
                       SetingsRowView(imageName: "arrow.left.circle.fill", title: "Sair do Aplicativo", tintColor: Color(.systemRed))
                   }
                   Button{
                       print("Deletar conta")
                   }label: {
                       SetingsRowView(imageName: "xmark.circle.fill", title: "Deletar Conta", tintColor: Color(.systemRed))
                   }
                   
                   
                   
                   
                   
                   
                   
                   
               }
               
               
               
           }
           
        }
        
    }
}//fim

#Preview {
    ProfileView()
}
