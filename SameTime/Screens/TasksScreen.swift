//
//  TasksScreen.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct TasksScreen: View {
    let tasks = dummyTasks

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ForEach(tasks) { task in
                        Text("\(task.title)")
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
            }
                .navigationTitle("Tasks")
                .navigationBarTitleDisplayMode(.inline)
        }

    }
}

struct TasksScreen_Previews: PreviewProvider {
    static var previews: some View {
        TasksScreen()
    }
}
