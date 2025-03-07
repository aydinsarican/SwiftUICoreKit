//
//  CustomModalView.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 7.03.2025.
//

import SwiftUI

public struct CustomModalView: View {
    let title: String
    let message: String
    @Binding var isPresented: Bool

    public var body: some View {
        VStack {
            Text(title).font(.headline)
                .foregroundStyle(.blue)
            Text(message).font(.subheadline)
                .foregroundStyle(.blue)
            Button("Kapat") {
                isPresented.toggle()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}

#Preview {
    @Previewable @State var isPresented = false
    CustomModalView(title: "Title", message: "Message", isPresented: $isPresented)
}
