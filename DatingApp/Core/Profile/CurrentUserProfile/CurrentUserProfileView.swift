//
//  CurrentUserProfileView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 13.04.24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel

    @State private var showEditProfile = false
    
    let user: UserProfile
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
                        viewModel.signOut()
                        print("DEBUG: Logout here...")
                    }
                    .foregroundStyle(.red)
                }
                Section {
                    Button("Delete Account") {
                        print("DEBUG: Delete here...")
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
