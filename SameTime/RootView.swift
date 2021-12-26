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
                    case .calendar:
                        ScheduleScreen()
                    case .plan:
                        TasksScreen()
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
                        ).frame(maxWidth: .infinity)
                        TabBarIcon(
                            title: "Schedule",
                            iconSystemName: "calendar",
                            tabId: .calendar,
                            isSelected: viewRouter.currentPageId == .calendar
                        ).frame(maxWidth: .infinity)
//                        Spacer()
//                        Group {
//                            TabBarAddIcon()
//                        }
                        TabBarIcon(
                            title: "Tasks",
                            iconSystemName: "list.bullet",
                            tabId: .plan,
                            isSelected: viewRouter.currentPageId == .plan
                        ).frame(maxWidth: .infinity)
                        TabBarIcon(
                            title: "Settings",
                            iconSystemName: "gearshape.fill",
                            tabId: .settings,
                            isSelected: viewRouter.currentPageId == .settings
                        ).frame(maxWidth: .infinity)
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
            .environmentObject(ViewRouter())
    }
}
