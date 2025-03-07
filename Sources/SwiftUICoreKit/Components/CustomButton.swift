//
//  CustomButton.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 7.03.2025.
//

import SwiftUI

public struct CustomButton: View {
    let title: String
    let icon: String?
    let action: () -> Void
    let backgroundColor: Color

    public init(title: String, icon: String? = nil, backgroundColor: Color = .blue, action: @escaping () -> Void) {
        self.title = title
        self.icon = icon
        self.backgroundColor = backgroundColor
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
            .background(backgroundColor)
            .cornerRadius(10)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    CustomButton(title: "Button", icon: nil, backgroundColor: .purple) {
        //Action
    }
}
