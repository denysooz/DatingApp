//
//  CardView.swift
//  DatingApp
//
//  Created by Denis Dareuskiy on 7.04.24.
// get get update
// 1:10:15

import SwiftUI

struct CardView: View {
    @ObservedObject var viewModel: CardsViewModel

    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State var currentImageIndex = 0
    @State private var showProfileSheet = false

    let model: CardModel

    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(user.profileImageURLs[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .overlay(ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: imageCount))

                CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: imageCount)

                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            UserInfoView(showProfileSheet: $showProfileSheet, user: user)
        }
        .fullScreenCover(isPresented: $showProfileSheet) {
            UserProfileView(user: user)
        }
        .onReceive(viewModel.$buttonSwipeAction, perform: { action in
            onRecieveSwipeAction(action)
        })
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

private extension CardView {
    var user: User {
        return model.user
    }

    var imageCount: Int {
        return user.profileImageURLs.count
    }
}

private extension CardView {
    func returnToCenter() {
        xOffset = 0
        degrees = 0
    }

    func swipeRight() {
        withAnimation{
            xOffset = 500
            degrees = 12
        } completion: {
            viewModel.removeCard(model)
        }
    }

    func swipeLeft() {
        withAnimation{
            xOffset = -500
            degrees = -12
        } completion: {
            viewModel.removeCard(model)
        }
    }

    func onRecieveSwipeAction(_ action: SwipeAction?) {
        guard let action else { return }

        let topCard = viewModel.cardModels.last

        if topCard == model {
            switch action {
            case .reject:
                swipeLeft()
            case .like:
                swipeRight()
            }
        }
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width

        if abs(width) <= abs(SizeConstants.screenCutoff) {
            returnToCenter()
            return
        }

        if width >= SizeConstants.screenCutoff {
            swipeRight()
        } else {
            swipeLeft()
        }
    }
}

#Preview {
    CardView(
        viewModel: CardsViewModel(service: CardService()),
        model: CardModel(user: MockData.users[0])
    )
}
