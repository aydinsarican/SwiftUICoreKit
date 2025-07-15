//
//  ThemeManager.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 8.03.2025.
//

import SwiftUI

public class ThemeManager: ObservableObject {
    @Published public var primaryColor: Color
    @Published public var primaryLightColor: Color
    @Published public var secondaryColor: Color
    @Published public var backgroundColor: Color
    @Published public var primaryTextColor: Color
    @Published public var lightTextColor: Color
    @Published public var notrColor: Color
    @Published public var notrDarkerColor: Color

    @Published public var font: Font

    public init() {
        self.primaryColor = Color("PrimaryColor", bundle: .module)
        self.primaryLightColor = Color("PrimaryLightColor", bundle: .module)
        self.secondaryColor = Color("SecondaryColor", bundle: .module)
        self.backgroundColor = Color("BackgroundColor", bundle: .module)
        self.primaryTextColor = Color("PrimaryTextColor", bundle: .module)
        self.lightTextColor = Color("LightTextColor", bundle: .module)
        self.notrColor = Color("NotrColor", bundle: .module)
        self.notrDarkerColor = Color("NotrDarkerColor", bundle: .module)

        self.font = Font.custom("System", size: 16)
    }

    public func updateFont(name: String, size: CGFloat) {
        self.font = Font.custom(name, size: size)
    }

    public func updateColors(
        primaryColor: String?,
        primaryLightColor: String?,
        secondaryColor: String?,
        backgroundColor: String?,
        primaryTextColor: String?,
        lightTextColor: String?,
        notrColor: String?,
        notrDarkerColor: String?
    ) {
        if let primaryColor = primaryColor {
            self.primaryColor = Color(hex: primaryColor)
        }
        if let primaryLightColor = primaryLightColor {
            self.primaryLightColor = Color(hex: primaryLightColor)
        }
        if let secondaryColor = secondaryColor {
            self.secondaryColor = Color(hex: secondaryColor)
        }
        if let backgroundColor = backgroundColor {
            self.backgroundColor = Color(hex: backgroundColor)
        }
        if let primaryTextColor = primaryTextColor {
            self.primaryTextColor = Color(hex: primaryTextColor)
        }
        if let lightTextColor = lightTextColor {
            self.lightTextColor = Color(hex: lightTextColor)
        }
        if let notrColor = notrColor {
            self.notrColor = Color(hex: notrColor)
        }
        if let notrDarkerColor = notrDarkerColor {
            self.notrDarkerColor = Color(hex: notrDarkerColor)
        }
    }
}
