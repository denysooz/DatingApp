//
//  CardModel.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 10.04.24.
//

import Foundation

struct CardModel {
    let user: UserProfile
}

extension CardModel: Identifiable, Hashable {
    var id: String { return user.id }
}
