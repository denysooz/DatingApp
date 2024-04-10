//
//  SwipeActionIndicatorView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 7.04.24.
//

// 38:09

import SwiftUI

struct SwipeActionIndicatorView: View {
    @Binding var xOffset: CGFloat
    var body: some View {
        LinearGradient(colors: [.green, .clear], startPoint: .top, endPoint: .bottom)
            .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)

            .opacity(Double(xOffset / SizeConstants.screenCutoff))

        LinearGradient(colors: [.red, .clear], startPoint: .top, endPoint: .bottom)
            .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)

            .opacity(Double(xOffset / SizeConstants.screenCutoff) * -1)

    }
}

#Preview {
    SwipeActionIndicatorView(xOffset: .constant(20))
}
