//
//  TabBarIcon.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct TabBarIcon: View {
    @EnvironmentObject private var viewRouter: ViewRouter

    let title: String
    let iconSystemName: String
    let tabId: PageId
    let isSelected: Bool

    var body: some View {
        VStack(spacing: 0) {
                Image(systemName: iconSystemName)
                .font(.system(size: 24))
                .frame(width: 32, height: 32)
                Text(title)
                    .font(.system(size: 12))
        }
        .foregroundColor(isSelected ? Color("TabBarIconSelected") : Color("TabBarIcon"))
        .onTapGesture {
            viewRouter.currentPageId = tabId
        }
    }
}

struct TabBarIcon_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TabBarIcon(title: "test", iconSystemName: "heart.fill", tabId: .home, isSelected: false)
            TabBarIcon(title: "test", iconSystemName: "heart.fill", tabId: .home, isSelected: true)
        }
    }
}
