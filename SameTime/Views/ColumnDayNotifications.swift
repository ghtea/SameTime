//
//  ColumnDayNotifications.swift
//  SameTime
//
//  Created by wiz on 2021/12/31.
//

import SwiftUI

struct ColumnDayNotifications: View {
    let weekday: Int?
    let notifications: [TaskNotification]

    let title: (Int?) -> String = { weekday in
        if weekday == 1 {
            return "MON"
        } else if weekday == 2 {
            return "TUE"
        } else if weekday == 3 {
            return "WED"
        } else if weekday == 4 {
            return "THU"
        } else if weekday == 5 {
            return "FRI"
        } else if weekday == 6 {
            return "SAT"
        } else if weekday == 7 {
            return "SUN"
        } else {
            return "all"
        }
    }

    var body: some View {
        VStack {
            Text("\(title(weekday))")
                .frame(height: 32)
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
        ColumnDayNotifications(weekday: 1, notifications: [
            TaskNotification(id: "ddddfsdgage", title: "dfdfeg", weekday: 1, hour: 13, minute: 30)
        ])
    }
}
