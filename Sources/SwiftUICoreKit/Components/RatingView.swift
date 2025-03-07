//
//  RatingView.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 7.03.2025.
//

import SwiftUI

public struct RatingView: View {
    let rating: Double

    public var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<5) { index in
                Image(systemName: index < Int(rating) ? "star.fill" : "star")
                    .foregroundColor(index < Int(rating) ? .yellow : .gray)
            }
        }
    }
}

#Preview {
    RatingView(rating: 3)
}
