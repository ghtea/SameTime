//
//  Layout.swift
//  SameTime
//
//  Created by wiz on 2021/12/27.
//

import Foundation
import SwiftUI

class Layout: ObservableObject {
    @Published var showingTabBar: Bool = false
    @Published var tabBarHeight: CGFloat? = 0

    func setShowingTabBar(value: Bool) {
        showingTabBar = value
    }
    func setTabBarHeight(value: CGFloat) {
        tabBarHeight = value
    }
}
