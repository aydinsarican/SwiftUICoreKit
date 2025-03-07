//
//  CustomToggleSwitch.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 7.03.2025.
//

import SwiftUI

public struct CustomToggleSwitch: View {
    @Binding var isOn: Bool

    public var body: some View {
        Toggle(isOn: $isOn) {
            Text(isOn ? "Açık" : "Kapalı")
                .foregroundColor(isOn ? .green : .gray)
        }
        .toggleStyle(SwitchToggleStyle(tint: .blue))
    }
}

#Preview {
    @Previewable @State var isOn = false
    CustomToggleSwitch(isOn: $isOn)
}
