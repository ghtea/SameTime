//
//  SheetAddTask.swift
//  SameTime
//
//  Created by wiz on 2021/12/25.
//

import SwiftUI

struct SheetAddTask: View {
    @Binding var isOpenSheet: Bool

    @State var title: String = ""
    @State var startDate: Date = Date()
//    @State var timeLimit = Flavor.chocolate

    var body: some View {
        VStack(alignment: .center) {
            Text("Add Task")
                .font(.title2)

            VStack {
                TextField("Title", text: $title)
                    .frame(height: 36)
                    .padding(4)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 20)

            VStack(alignment: .leading) {
                Text("Reminder Time")
                HStack {
                    DatePicker("", selection: $startDate,
                               displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 20)

            VStack(alignment: .leading) {
                Text("Time Limit")
//                HStack {
//
//                    Picker("Flavor", selection: $selectedFlavor) {
//                        Text("Chocolate").tag(Flavor.chocolate)
//                        Text("Vanilla").tag(Flavor.vanilla)
//                        Text("Strawberry").tag(Flavor.strawberry)
//                    }
//                    Text("Selected flavor: \(selectedFlavor.rawValue)")
//                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 20)

            Spacer()
            Button("Dismiss",
                   action: { isOpenSheet.toggle() })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.horizontal, 16)
        .padding(.top, 20)
        .padding(.bottom, 20)
    }

}

struct SheetAddTask_Previews: PreviewProvider {
    static var previews: some View {
        SheetAddTask(isOpenSheet: .constant(true))
    }
}
