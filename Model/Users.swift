//
//  Users.swift
//  SwiftUIAuthTutorial
//
//  Created by Luana Martinez de la Flor on 10/1/25.
//

import Foundation


struct  Users: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
    
}

extension Users {
    static var MOCK_USER = Users(
        id: NSUUID().uuidString,
        fullname: "Shoalin Matador de Porcos",
        email: "shaolin@example.com"
    )
    
}

    

