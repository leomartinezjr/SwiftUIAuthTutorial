//
//  InputView.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 9/29/25.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureFild = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(title)
                .foregroundColor(Color (.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureFild {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
            }else{
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
                
            }
            Divider()
            
        }
        
        
    }
}





#Preview {
    InputView(text: .constant(""), title: "Email Address", placeholder: "name@exemplo.com.br")
}
