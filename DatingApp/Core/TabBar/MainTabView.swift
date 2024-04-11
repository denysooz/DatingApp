//
//  MainTabView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 7.04.24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            CardStackView()
                .tabItem { Image(systemName: "flame")}
                .tag(0)

            Text("Search view")
                .tabItem { Image(systemName: "magnifyingglass")}
                .tag(1)

            Text("Inbox view")
                .tabItem { Image(systemName: "bubble")}
                .tag(2)

            Text("Profile view")
                .tabItem { Image(systemName: "person")}
                .tag(3)
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
}
