//
//  UserMatchView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 14.04.24.
//

import SwiftUI

struct UserMatchView: View {
    @Binding var show: Bool
    @EnvironmentObject var matchManager: MatchManager

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black.opacity(0.7))
                .ignoresSafeArea()

            VStack(spacing: 120) {
                VStack {
                    Text("IT'S MATCH!")
                        .foregroundStyle(.pink
                        )
                        .font(.largeTitle)
                        .fontWeight(.heavy)

                    if let matchedUser = matchManager.matchedUser {
                        Text("You and \(matchedUser.fullname) have liked each other.")
                            .foregroundStyle(.white)
                    }
                }

                HStack(spacing: 16) {
                    Image(MockData.currentUser.profileImageURLs[0])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 160, height: 160)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(.white, lineWidth: 2)
                                .shadow(radius: 10)
                        }
                    if let matchedUser = matchManager.matchedUser {
                        Image(matchedUser.profileImageURLs[0])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 160, height: 160)
                            .clipShape(Circle())
                            .overlay {
                                Circle()
                                    .stroke(.white, lineWidth: 2)
                                    .shadow(radius: 10)
                            }
                    }
                }

                VStack(spacing: 16) {
                    Button("Send message") {
                        show.toggle()
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.pink)
                    .clipShape(Capsule())

                    Button("Keep swiping") {
                        show.toggle()
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.clear)
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                            .stroke(.white, lineWidth: 1)
                            .shadow(radius: 10)
                    }
                }
            }
        }
    }
}

#Preview {
    UserMatchView(show: .constant(true))
        .environmentObject(MatchManager())
}
