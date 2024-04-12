//
//  UserInfoView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 7.04.24.
//

import SwiftUI

struct UserInfoView: View {
    @Binding var showProfileSheet: Bool

    let user: User

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(user.fullname)
                    .font(.title)
                    .fontWeight(.heavy)

                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)

                Spacer()

                Button {
                    showProfileSheet.toggle()
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }

            }

            Text("Some test bio...")
                .font(.subheadline)
                .lineLimit(2)
        }
        .padding(.horizontal)
        .padding()
        .foregroundStyle(.white)

        .background(LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom))

    }
}

#Preview {
    UserInfoView(showProfileSheet: .constant(false), user: MockData.users[1])
}
