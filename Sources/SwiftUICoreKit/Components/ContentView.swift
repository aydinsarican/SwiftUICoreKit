//
//  ContentView.swift
//  SwiftUICoreKit
//
//  Created by Aydın Sarıcan on 7.03.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    @State private var username = ""
    @State private var isModalPresented = false

    var body: some View {
        VStack {
            CustomTextField(placeholder: "Kullanıcı Adı", text: $username)
            CustomButton(title: "Giriş Yap") {
                print("Butona tıklandı!")
            }
            RatingView(rating: 4.5)
            CustomCardView(image: "exampleImage", title: "Restoran Adı", subtitle: "Kategori - 4.5 ⭐")
            CustomTabBar(selectedTab: $selectedTab)
            FloatingActionButton(icon: "plus") {
                print("FAB Tıklandı")
            }
            CustomModalView(title: "Uyarı", message: "Bu bir test mesajıdır", isPresented: $isModalPresented)
            CustomToggleSwitch(isOn: $isModalPresented)
        }
    }
}

#Preview {
    ContentView()
}
