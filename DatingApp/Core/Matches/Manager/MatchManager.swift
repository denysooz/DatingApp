//
//  MatchManager.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 14.04.24.
//

import Foundation

@MainActor 
class MatchManager: ObservableObject {
    @Published var matchedUser: UserProfile?

    func checkForMatch(withUser user: UserProfile) {
        let didMatch = Bool.random()

        if didMatch {
            matchedUser = user
        }
    }
}
