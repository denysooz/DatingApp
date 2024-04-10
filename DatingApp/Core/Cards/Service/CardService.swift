//
//  CardService.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 10.04.24.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({ CardModel(user: $0)})
    }
}
