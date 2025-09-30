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
                    Text("LP")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .cornerRadius(36)
                    
                    VStack(alignment: .leading){
                        Text("Lopes Porks lopes ")
                            .font(.headline)
                        Text("lopes.porks@example.com")
                            .foregroundColor(.secondary)
                            .accentColor(.gray)
                    }
                    
                    
                    
                }
                    
                
                
            }
            Section("General"){
                
            }
            Section("Conta"){
                
            }
            
            
            
        }
        
    }
}

#Preview {
    ProfileView()
}
