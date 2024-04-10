//
//  UserInfoView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 7.04.24.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Mary")
                    .font(.title)
                    .fontWeight(.heavy)

                Text("18")
                    .font(.title)
                    .fontWeight(.semibold)

                Spacer()

                Button {
                    print("DEBUG: Show profile here...")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }

            }

            Text("Hottest | Manager")
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
    UserInfoView()
}
