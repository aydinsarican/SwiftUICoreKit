//
//  Color+Extensions.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 8.03.2025.
//

import SwiftUI

extension Color {
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: "#", with: "")

        if hexSanitized.count == 6 {
            hexSanitized = "FF" + hexSanitized // If the alpha part is missing, 100% opacity is added by default.
        }

        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = Double((rgb >> 16) & 0xFF) / 255.0
        let green = Double((rgb >> 8) & 0xFF) / 255.0
        let blue = Double(rgb & 0xFF) / 255.0
        let alpha = Double((rgb >> 24) & 0xFF) / 255.0

        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }

    // Hex kodunu döndüren bir fonksiyon
    func toHex() -> String? {
        guard let components = self.cgColor?.components, components.count >= 3 else { return nil }

        let red = Int(components[0] * 255)
        let green = Int(components[1] * 255)
        let blue = Int(components[2] * 255)
        let alpha = components.count == 4 ? Int(components[3] * 255) : 255

        return String(format: "#%02X%02X%02X%02X", red, green, blue, alpha)
    }
}
