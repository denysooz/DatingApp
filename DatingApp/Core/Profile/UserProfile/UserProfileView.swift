//
//  UserProfileView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 12.04.24.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentImageIndex = 0
    let user: UserProfile

    var body: some View {
        VStack {
            HStack {
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text("\(user.age)")
                    .font(.title2)

                Spacer()

                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundStyle(.red)
                }
            }
            .padding(.horizontal)

            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        Image(user.profileImageURLs[currentImageIndex])
                            .resizable()
                            .scaledToFill()
                            .overlay(ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: user.profileImageURLs.count))

                        CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: user.profileImageURLs.count)
                    }

                    VStack(alignment: .leading, spacing: 12) {
                        Text("About me")
                            .fontWeight(.semibold)

                        Text("Some bio for test")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                    VStack(alignment: .leading, spacing: 12) {
                        Text("Essentials")
                            .fontWeight(.semibold)

                        HStack {
                            Image(systemName: "person")

                            Text("Woman")

                            Spacer()
                        }
                        .font(.subheadline)

                        HStack {
                            Image(systemName: "arrow.down.forward.and.arrow.up.backward.circle")

                            Text("Straight")

                            Spacer()
                        }
                        .font(.subheadline)

                        HStack {
                            Image(systemName: "book")

                            Text("Manager")

                            Spacer()
                        }
                        .font(.subheadline)
                    }
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.users[0])
}
