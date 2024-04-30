//
//  ContentView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 10.04.24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AuthViewModel())
}
