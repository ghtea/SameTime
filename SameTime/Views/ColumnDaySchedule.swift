//
//  ColumnDayTimeItems.swift
//  SameTime
//
//  Created by wiz on 2021/12/31.
//

import SwiftUI

struct ColumnDaySchedule: View {
    let title: String
    let notifications: [TaskNotification]

    var body: some View {
        VStack {
            Text("\(title)")
                .frame(height: 40)
                .frame(maxWidth: .infinity)
                .background(Color.gray)
            ForEach(notifications, id: \.self.id) { item in
                Text("\(item.hour):\(item.minute)")
                Rectangle()
                    .frame(height: 1)
//                Group {
//                    if (!(item.id == notifications.last.id)){
//                        Rectangle()
//                            .frame(height: 1)
//                    } else {
//                        EmptyView()
//                    }
//                }
            }
        }.frame(width: 80)
    }
}

struct ColumnDaySchedule_Previews: PreviewProvider {
    static var previews: some View {
        ColumnDaySchedule(title: "MON", notifications: [
            TaskNotification(id: "ddddfsdgage", title: "dfdfeg", weekday: 1, hour: 13, minute: 30)
        ])
    }
}
