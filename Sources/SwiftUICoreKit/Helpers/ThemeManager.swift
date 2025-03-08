//
//  ThemeManager.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 8.03.2025.
//

import SwiftUI

public class ThemeManager: ObservableObject {
    @MainActor public static let shared = ThemeManager()

    @Published public var primaryColor: Color
    @Published public var primaryLightColor: Color
    @Published public var secondaryColor: Color
    @Published public var backgroundColor: Color
    @Published public var primaryTextColor: Color
    @Published public var lightTextColor: Color
    @Published public var notrColor: Color
    @Published public var notrDarkerColor: Color

    private init() {
        self.primaryColor = Color("PrimaryColor")
        self.primaryLightColor = Color("PrimaryLightColor")
        self.secondaryColor = Color("SecondaryColor")
        self.backgroundColor = Color("BackgroundColor")
        self.primaryTextColor = Color("PrimaryTextColor")
        self.lightTextColor = Color("LightTextColor")
        self.notrColor = Color("NotrColor")
        self.notrDarkerColor = Color("NotrDarkerColor")
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
            self.primaryColor = Color(primaryColor)
        }
        if let primaryLightColor = primaryLightColor {
            self.primaryLightColor = Color(primaryLightColor)
        }
        if let secondaryColor = secondaryColor {
            self.secondaryColor = Color(secondaryColor)
        }
        if let backgroundColor = backgroundColor {
            self.backgroundColor = Color(backgroundColor)
        }
        if let primaryTextColor = primaryTextColor {
            self.primaryTextColor = Color(primaryTextColor)
        }
        if let lightTextColor = lightTextColor {
            self.lightTextColor = Color(lightTextColor)
        }
        if let notrColor = notrColor {
            self.notrColor = Color(notrColor)
        }
        if let notrDarkerColor = notrDarkerColor {
            self.notrDarkerColor = Color(notrDarkerColor)
        }
    }
}
