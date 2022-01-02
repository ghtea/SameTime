//
//  SameTimeApp.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//
// https://fredriccliver.medium.com/how-init-firebase-when-youre-using-swiftui-as-the-new-swiftui-lifecycle-but-traditional-app-21d19c4b551f

import SwiftUI
import Firebase

@main
struct SameTimeApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate

    @StateObject private var viewRouter = ViewRouter()
    @StateObject private var layout = Layout()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(viewRouter)
                .environmentObject(layout)
        }
    }

    class AppDelegate: NSObject, UIApplicationDelegate {
        func application(
            _ application: UIApplication,
            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
                FirebaseApp.configure()
                return true
            }
    }
}
