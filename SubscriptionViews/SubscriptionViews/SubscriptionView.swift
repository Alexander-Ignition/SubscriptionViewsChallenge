//
//  SubscriptionView.swift
//  SubscriptionViewsChallange
//
//  Created by Максим Казаков on 15.01.2022.
//

import SwiftUI

struct SubscriptionInfoView: View {
    let subscription: Subscription

    let dividerColor = Color(UIColor.white.withAlphaComponent(0.5))

    var body: some View {
        VStack(spacing: 12) {
                Text(subscription.title)
                    .font(Font.system(size: 15, weight: .semibold, design: .default))
                    .padding(.horizontal, 8)
                    .multilineTextAlignment(.center)

                Rectangle().fill(dividerColor).frame(height: 1, alignment: .center)

                Text(subscription.subtitle)
                    .padding(.horizontal, 8)
                    .font(Font.system(size: 15, weight: .semibold, design: .default))
                    .multilineTextAlignment(.center)
            }
            .foregroundColor(.white)
            .padding(.vertical, 12)
            .background(Color.green)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(dividerColor, lineWidth: 2)
            )
    }
}

