//
//  ContentView.swift
//  SubscriptionViewsChallange
//
//  Created by Максим Казаков on 15.01.2022.
//

import SwiftUI

struct Subscription {
    let id: Int
    let title: String
    let subtitle: String
}

struct ContentView: View {
    // subscriptions могут содержать любой title и subtitle.
    // элементов в массиве всегда 2
    let subsctiptions: [Subscription] = [
        .init(id: 1, title: "Бесплатно 1 неделя", subtitle: "Далее $199 / месяц"),
        .init(id: 2, title: "Навсегда", subtitle: "$999"),
    ]

    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 16) {
                ForEach(subsctiptions, id: \.id) { subscription in
                    SubscriptionInfoView(
                        subscription: subscription
                    )
                }
            }
            .fixedSize(horizontal: false, vertical: true)
            Spacer()
        }
        .padding()
        .background(Color.blue.ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
