//
//  Task.swift
//  SameTime
//
//  Created by wiz on 2021/12/25.
//

import Foundation

struct Task: Identifiable {
    let id: String = UUID().uuidString
    var title: String
    var note: String
    var icon: String?
    var color: String?

    var notifications: [TaskNotification]
    var defaultHour: Int?
    var defaultMinute: Int?

    var shouldCheck: Bool
}

struct TaskNotification {
    var id: String = UUID().uuidString
    var requestId: String?
    var title: String
    var year: Int?
    var month: Int?
    var day: Int?
    var weekday: Int?
    var hour: Int
    var minute: Int
}

let dummyTasks = [
    Task(title: "task A", note: "kdd dkk", notifications: [
        TaskNotification(title: "task A", weekday: 1, hour: 14, minute: 30),
        TaskNotification(title: "task A", hour: 19, minute: 44)
    ], shouldCheck: true),
    Task(title: "task B", note: "kkk", notifications: [
        TaskNotification(title: "task B", weekday: 2, hour: 14, minute: 30),
        TaskNotification(title: "task B", weekday: 4, hour: 19, minute: 44)
    ], shouldCheck: true)
]
