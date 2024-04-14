//
//  CurrentUserProfileView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 13.04.24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var showEditProfile = false
    let user: User
    var body: some View {
        NavigationStack {
            List {
                //header info
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()
                    }

                //account info
                Section("Account information") {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text(MockData.currentUser.fullname)
                    }

                    HStack {
                        Text("Email")
                        Spacer()
                        Text("test@gmail.com")
                    }
                }

                //legal
                Section("Legal") {
                    Text("Terms of Service")
                }

                //logout/delete
                Section {
                    Button("Logout") {
                        print("DEBUG: Logout here...")
                    }
                    .foregroundStyle(.red)
                }
                Section {
                    Button("Delete Account") {
                        print("DEBUG: Logout here...")
                    }
                    .foregroundStyle(.red)
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showEditProfile) {
                EditProfileView(user: user)
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[0])
}
