//
//  ThemeManagerKey.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 8.03.2025.
//
import SwiftUI

private struct ThemeManagerKey: @preconcurrency EnvironmentKey {
    @MainActor static let defaultValue: ThemeManager = ThemeManager.shared
}

extension EnvironmentValues {
    public var themeManager: ThemeManager {
        get { self[ThemeManagerKey.self] }
        set { self[ThemeManagerKey.self] }
    }
}
