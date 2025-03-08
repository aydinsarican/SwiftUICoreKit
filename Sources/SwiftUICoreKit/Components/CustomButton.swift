//
//  CustomButton.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 7.03.2025.
//

import SwiftUI

public struct CustomButton: View {
    @Environment(\.themeManager) private var theme

    let title: String
    let icon: String?
    let action: () -> Void

    public init(title: String, icon: String? = nil, action: @escaping () -> Void) {
        self.title = title
        self.icon = icon
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            HStack {
                if let icon = icon {
                    Image(systemName: icon)
                        .foregroundColor(.white)
                }
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(theme.primaryColor)
            .cornerRadius(10)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    CustomButton(title: "Button", icon: nil) {
        //Action
    }
}
