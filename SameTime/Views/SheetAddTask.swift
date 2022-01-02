//
//  SheetAddTask.swift
//  SameTime
//
//  Created by wiz on 2021/12/25.
//

import SwiftUI

///
// let id: String = UUID().uuidString
// var title: String
// var note: String
// var icon: String?
// var color: String?
//
// var notifications: [TaskNotification]
//
// var shouldCheck: Bool
///
///
struct SheetAddTask: View {
    @Binding var isOpenSheet: Bool

    @State var title: String = ""
    @State var note: String = ""
    @State var notifications: [TaskNotification] = [
        TaskNotification(id: "ddddfsdgage", title: "dfdfeg", weekday: 1, hour: 13, minute: 30)
    ]
    @State var defaultTime: Date = Date()
    @State var isUsingSameTime: Bool = true

    let dayNotifications: ([TaskNotification], Int?) -> [TaskNotification] = { allNotifications, weekday in
        return allNotifications.filter {
            $0.weekday == weekday
        }
    }

    var defaultTimeText: (Date) -> String = { date in
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)

        return "\(hour):\(minute)"
    }

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                VStack {
                    TextField("Title", text: $title)
                        .frame(height: 36)
                        .padding(4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                VStack(alignment: .leading) {
                    Text("Note")
                        .font(.system(size: 20))
                    TextEditor(text: $note)
                        .frame(height: 80)
                        .padding(4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                VStack(alignment: .leading) {
                    Text("Notifications")
                        .font(.system(size: 20))

//                    Text("\(defaultTimeText(defaultTime))")
//                        .font(.system(size: 20))
//                        .frame(maxWidth: .infinity)
//                        .padding(.vertical, 4)

                    DatePicker("default time", selection: $defaultTime, displayedComponents: [.hourAndMinute])
                        // .labelsHidden()
                        .frame(maxWidth: .infinity)

                    Toggle("use same time", isOn: $isUsingSameTime)

                    ScrollView(.horizontal) {
                        HStack {
                            ForEach([nil, 1, 2, 3, 4, 5, 6, 7], id: \.self) { item in
                                ColumnDayNotifications(weekday: item, notifications: [])
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding(.horizontal, 16)
            .padding(.top, 20)
            .padding(.bottom, 20)
            .navigationTitle("Add Task")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        isOpenSheet = false
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        isOpenSheet = false
                    }
                }
            }
        }.navigationViewStyle(.stack)

    }

}

struct SheetAddTask_Previews: PreviewProvider {
    static var previews: some View {
        SheetAddTask(isOpenSheet: .constant(true))
    }
}
