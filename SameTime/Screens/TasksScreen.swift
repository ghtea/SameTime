//
//  TasksScreen.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct TasksScreen: View {
    @EnvironmentObject private var layout: Layout

    let tasks = dummyTasks

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List(tasks) { task in
                        ListItemTask(task: task)
                    }
                }
                VStack {
                    ButtonCreateTask()
                        .frame(height: 36)
                        .padding(4)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .padding(.leading, 16)
                .padding(.bottom, 8)
                .padding(.bottom, layout.tabBarHeight)
            }
            .navigationTitle("Tasks")
            .navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(.stack)

    }
}

struct TasksScreen_Previews: PreviewProvider {
    static var previews: some View {
        TasksScreen()
            .environmentObject(Layout())
    }
}
