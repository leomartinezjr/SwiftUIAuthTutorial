//
//  SetingsRowView.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 10/1/25.
//

import SwiftUI

struct SetingsRowView: View {
    let imageName: String
    let title: String
    let tintColor: Color
    
    
    
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .foregroundColor(tintColor)
                .font(.title)
                .imageScale(.small)
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(.black)
                
            
        }
    }
}

#Preview {
    SetingsRowView(imageName: "gear", title: "version", tintColor: Color(.systemGray))
}
