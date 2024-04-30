//
//  User.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 10.04.24.
//

import Foundation

struct UserProfile: Identifiable, Hashable {
    let id: String
    let fullname: String
    var age: Int
    var bio: String
    var gender: String
    var sexualOrientaion: String
    var profileImageURLs: [String]
}

struct UserAuthentication: Identifiable, Codable {
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
