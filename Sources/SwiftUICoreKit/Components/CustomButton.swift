//
//  CustomButton.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 7.03.2025.
//

import SwiftUI

public enum CustomButtonType {
    case primary
    case secondary
    case custom(background: Color, font: Font)
}

public struct CustomButton: View {
    @EnvironmentObject var theme: ThemeManager

    let title: String
    let icon: String?
    let action: () -> Void
    let type: CustomButtonType

    public init(title: String, icon: String? = nil, type: CustomButtonType = .primary, action: @escaping () -> Void) {
        self.title = title
        self.icon = icon
        self.type = type
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
                    .font(buttonFont)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(buttonBackground)
            .cornerRadius(10)
        }
        .padding(.horizontal, 16)
    }

    private var buttonBackground: Color {
        switch type {
        case .primary:
            return theme.primaryColor
        case .secondary:
            return theme.secondaryColor
        case .custom(let background, _):
            return background
        }
    }

    private var buttonFont: Font {
        switch type {
        case .primary, .secondary:
            return theme.font
        case .custom(_, let font):
            return font
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        CustomButton(title: "Primary Button", type: .primary) {}
        CustomButton(title: "Secondary Button", type: .secondary) {}
        CustomButton(title: "Custom Button", type: .custom(background: .purple, font: .system(size: 20, weight: .bold))) {}
    }
    .environmentObject(ThemeManager())
}
