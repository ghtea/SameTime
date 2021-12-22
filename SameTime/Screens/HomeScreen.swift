//
//  HomeScreen.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            // https://sarunw.com/posts/navigation-in-swiftui/
            Text("Home")
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
