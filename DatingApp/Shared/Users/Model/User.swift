//
//  User.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 10.04.24.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullname: String
    var age: Int
    var bio: String
    var gender: String
    var sexualOrientaion: String
    var profileImageURLs: [String]
}
