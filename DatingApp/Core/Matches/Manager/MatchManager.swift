//
//  MatchManager.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 14.04.24.
//

import Foundation

@MainActor 
class MatchManager: ObservableObject {
    @Published var matchedUser: User?

    func checkForMatch(withUser user: User) {
        let didMatch = Bool.random()

        if didMatch {
            matchedUser = user
        }
    }
}
