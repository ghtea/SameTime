//
//  RootView.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    @EnvironmentObject private var layout: Layout

    init() {
        let appearance = UINavigationBarAppearance()

        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)

        UINavigationBar.appearance().standardAppearance = appearance
    }

    var body: some View {

        GeometryReader { screenGeometry in
            ZStack {
                // Screen
                Group {
                    switch viewRouter.currentPageId {
                    case .home :
                        HomeScreen()
                    case .calendar:
                        ScheduleScreen()
                    case .tasks:
                        TasksScreen()
                    case .settings:
                        SettingsScreen()
                    }
                }

                // TabBar
                VStack {
                    Spacer()
                    // GeometryReader { tabBarGeometry in
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
                        TabBarIcon(
                            title: "Tasks",
                            iconSystemName: "list.bullet",
                            tabId: .tasks,
                            isSelected: viewRouter.currentPageId == .tasks
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
                    .background(.ultraThinMaterial)
                    .frame(width: screenGeometry.size.width)
                    .modifier(SizeModifier())
                    .onPreferenceChange(SizePreferenceKey.self) { size in
                        layout.setTabBarHeight(value: size.height)
                    }
//                    .background(
//                        GeometryReader { tabBarGeometry in
//                            Color.clear
//                                .onAppear {
//                                    layout.setTabBarHeight(value: tabBarGeometry.size.height)
//                                    print(tabBarGeometry.size.height)
//                                }
//                        }
//                    )

                    // }

                }.frame(alignment: .bottom)
            }.frame(width: screenGeometry.size.width)

        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(ViewRouter())
            .environmentObject(Layout())
    }
}
