//
//  SameTimeApp.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

@main
struct SameTimeApp: App {
    @StateObject private var viewRouter = ViewRouter()
    @StateObject private var layout = Layout()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(viewRouter)
                .environmentObject(layout)
        }
    }
}
