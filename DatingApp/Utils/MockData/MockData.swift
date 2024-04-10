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
              profileImageURLs: ["hottestGirl", "hottestGirl-2"]
        ),
        .init(id: NSUUID().uuidString,
              fullname: "Deny Sooz",
              age: 19,
              profileImageURLs: ["boy"]
        )
    ]
}
