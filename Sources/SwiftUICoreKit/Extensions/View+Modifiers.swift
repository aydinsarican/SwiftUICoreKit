//
//  View+Modifiers.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 7.03.2025.
//

import SwiftUI

public extension View {
    func roundedBorder(_ color: Color = .gray, width: CGFloat = 1) -> some View {
        self
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(color, lineWidth: width)
            )
    }
}
