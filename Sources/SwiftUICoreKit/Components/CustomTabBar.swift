//
//  CustomTabBar.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 7.03.2025.
//

import SwiftUI

public struct CustomTabBar: View {
    @Binding var selectedTab: Int

    public var body: some View {
        HStack {
            TabBarButton(icon: "house", index: 0, selectedTab: $selectedTab)
            TabBarButton(icon: "magnifyingglass", index: 1, selectedTab: $selectedTab)
            TabBarButton(icon: "heart", index: 2, selectedTab: $selectedTab)
            TabBarButton(icon: "person", index: 3, selectedTab: $selectedTab)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 4)
    }
}

struct TabBarButton: View {
    let icon: String
    let index: Int
    @Binding var selectedTab: Int

    var body: some View {
        Button(action: { selectedTab = index }) {
            Image(systemName: icon)
                .foregroundColor(selectedTab == index ? .blue : .gray)
                .padding()
        }
    }
}

#Preview {
    @Previewable @State var index = 2
    CustomTabBar(selectedTab: $index)
}
