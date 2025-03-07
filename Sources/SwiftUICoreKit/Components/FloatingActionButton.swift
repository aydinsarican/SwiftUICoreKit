//
//  FloatingActionButton.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 7.03.2025.
//

import SwiftUI

public struct FloatingActionButton: View {
    let icon: String
    let action: () -> Void

    public var body: some View {
        Button(action: action) {
            Image(systemName: icon)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .clipShape(Circle())
                .shadow(radius: 4)
        }
    }
}

#Preview {
    FloatingActionButton(icon: "person") {

    }
}
