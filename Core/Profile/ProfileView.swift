//
//  ProfileView.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 9/30/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List{
            Section{
                HStack {
                    Text(Users.MOCK_USER.initials)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .cornerRadius(36)
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text(Users.MOCK_USER.fullname)
                            .font(.headline)
                        Text(Users.MOCK_USER.email)
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
                    SetingsRowView(imageName: "xmark.circle.fill", title: "Sair do Aplicativo", tintColor: Color(.systemRed))
                }
                
                
                
                
                
                
                
                
            }
            
            
            
        }
        
    }
}//fim

#Preview {
    ProfileView()
}
