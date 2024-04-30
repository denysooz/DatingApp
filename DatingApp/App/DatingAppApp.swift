//
//  DatingAppApp.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 10.04.24.
//

import SwiftUI
import Firebase

@main
struct DatingAppApp: App {
    @StateObject var viewModel = AuthViewModel()
    @StateObject var matchManager = MatchManager()

    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(matchManager)
                .environmentObject(viewModel)
        }
    }
}
