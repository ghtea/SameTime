//
//  RootView.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var viewRouter: ViewRouter

    init() {
        let appearance = UINavigationBarAppearance()

        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)

        UINavigationBar.appearance().standardAppearance = appearance
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Screen
                Group {
                    switch viewRouter.currentPageId {
                    case .home :
                        HomeScreen()
                    case .goals:
                        GoalsScreen()
                    case .settings:
                        SettingsScreen()
                    }
                }

                // TabBar
                Group {
                    HStack {
                        TabBarIcon(
                            title: "Home",
                            iconSystemName: "heart.fill",
                            tabId: .home,
                            isSelected: viewRouter.currentPageId == .home
                        )
                        Spacer()
                        TabBarIcon(
                            title: "Calendar",
                            iconSystemName: "calendar",
                            tabId: .calendar,
                            isSelected: viewRouter.currentPageId == .calendar
                        )
                        Spacer()
                        Group {
                            TabBarAddIcon()
                        }
                        Spacer()
                        TabBarIcon(
                            title: "Plan",
                            iconSystemName: "chart.bar.fill",
                            tabId: .plan,
                            isSelected: viewRouter.currentPageId == .plan
                        )
                        Spacer()
                        TabBarIcon(
                            title: "Settings",
                            iconSystemName: "gearshape.fill",
                            tabId: .settings,
                            isSelected: viewRouter.currentPageId == .settings
                        )
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 4)
                    .frame(width: geometry.size.width)
                    .background(.ultraThinMaterial)
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .bottom)

            }.frame(width: geometry.size.width)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
