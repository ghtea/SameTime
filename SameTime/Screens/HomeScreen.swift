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
            Text("Home")
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(.stack)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
