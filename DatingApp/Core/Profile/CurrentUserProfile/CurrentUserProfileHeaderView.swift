//
//  CurrentUserProfileHeaderView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 13.04.24.
//

import SwiftUI

struct CurrentUserProfileHeaderView: View {
    let user: UserProfile

    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Image(MockData.currentUser.profileImageURLs[0])
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .background {
                        Circle()
                            .fill(Color(.systemGray6))
                            .frame(width: 128, height: 128)
                            .shadow(radius: 10)
                    }

                Image(systemName: "pencil")
                    .imageScale(.small)
                    .foregroundStyle(.gray)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                    }
                    .offset(x: -8, y: 10)
            }
            Text("\(MockData.currentUser.fullname), \(MockData.currentUser.age)")
                .font(.title2)
                .fontWeight(.light)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 240)
    }
}

#Preview {
    CurrentUserProfileHeaderView(user: MockData.users[0])
}
