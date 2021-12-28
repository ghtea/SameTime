//
//  SettingsScreen.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        NavigationView {
            // https://sarunw.com/posts/navigation-in-swiftui/
            Text("Settings")
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(.stack)
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
