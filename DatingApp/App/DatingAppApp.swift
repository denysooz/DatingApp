//
//  DatingAppApp.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 10.04.24.
//

import SwiftUI

@main
struct DatingAppApp: App {
    @StateObject var matchManager = MatchManager()

    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
