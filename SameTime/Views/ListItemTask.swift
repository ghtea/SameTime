//
//  ListItemTask.swift
//  SameTime
//
//  Created by wiz on 2021/12/25.
//

import SwiftUI

struct ListItemTask: View {
    @Binding var task: Task

    var body: some View {
        HStack(alignment: .center) {
            VStack {

                Text("\(task.title)")
                    .font(.system(size: 22))
                HStack {
                    ForEach(1...7, id: \.self) { weekday in
                        Text("\(weekday)")
                    }
                }
            }
            Spacer()
            Image(systemName: "info.circle")
                .font(.system(size: 24))
                .frame(width: 32, height: 32)
                .foregroundColor(Color("TextHint"))
        }.frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
    }
}

struct ListItemTask_Previews: PreviewProvider {
    static var previews: some View {
        ListItemTask(task: .constant(dummyTasks[0]))
    }
}
