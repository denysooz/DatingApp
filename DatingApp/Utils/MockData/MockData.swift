//
//  MockData.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 10.04.24.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(id: NSUUID().uuidString,
              fullname: "Mary Yarmak",
              age: 18,
              bio: "Sexiest woman in your life",
              gender: "Woman",
              sexualOrientaion: "Straight",
              profileImageURLs: ["hottestGirl", "hottestGirl-2"]
        ),
        .init(id: NSUUID().uuidString,
              fullname: "Dima Volosyk",
              age: 20,
              bio: "Too many work to text to you",
              gender: "Man",
              sexualOrientaion: "Straight",
              profileImageURLs: ["Dima"]
        ),
        .init(id: NSUUID().uuidString,
              fullname: "Kate Bilida",
              age: 18,
              bio: "I want to eat",
              gender: "Woman",
              sexualOrientaion: "Bisexual",
              profileImageURLs: ["kate"]
        ),
        .init(id: NSUUID().uuidString,
              fullname: "Max Pashko",
              age: 19,
              bio: "Suka, skoro 20",
              gender: "Man",
              sexualOrientaion: "Straight",
              profileImageURLs: ["max"]
        ),
        .init(id: NSUUID().uuidString,
              fullname: "Yana Yana",
              age: 21,
              bio: "Aesthetic",
              gender: "Woman",
              sexualOrientaion: "Straight",
              profileImageURLs: ["yana"]
        )
    ]

    static let currentUser: User = .init(id: NSUUID().uuidString,
                                         fullname: "Deny Sooz",
                                         age: 19,
                                         bio: "Photoprogrammer",
                                         gender: "Man",
                                         sexualOrientaion: "Straight",
                                         profileImageURLs: ["boy"]
                                   )
}
