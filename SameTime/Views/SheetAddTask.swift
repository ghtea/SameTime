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
    @State var notifications: [TaskNotification] = []
    @State var defaultTime: Date = Date()

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
                    TextEditor(text: $note)
                        .frame(height: 80)
                        .padding(4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                VStack(alignment: .leading) {
                    HStack {
                        Text("Notifications")
                        Spacer()
                        NavigationLink(destination: SheetPageAddTaskNotification(selection: $defaultTime)) {
                            Text("add")
                        }
                    }.frame(maxWidth: .infinity)

                    Text("\(defaultTimeText(defaultTime))")

                    GeometryReader { weekRowGeometry in
                        HStack {
                            ForEach(["M", "T", "W", "Thu", "F", "S", "Sun"], id: \.self) { // TODO: resolve
                                Text("\($0)")
                                    .frame(height: 48)
                                    .frame(maxWidth: weekRowGeometry.size.width / 7)
                                    .background(Color.gray)
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
