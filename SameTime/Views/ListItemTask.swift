//
//  ListItemTask.swift
//  SameTime
//
//  Created by wiz on 2021/12/25.
//

import SwiftUI

struct ListItemTask: View {
    let task: Task

    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {

                Text("\(task.title)")
                    .font(.system(size: 20))
                HStack(alignment: .center, spacing: 4) {
                    ForEach(1...7, id: \.self) { _ in
                        Circle()
                            .frame(width: 8, height: 8, alignment: .center)
                            .foregroundColor(Color("TextDisabled"))
                    }
                }
            }
            Spacer()
            Image(systemName: "info.circle")
                .font(.system(size: 21))
                .frame(width: 32, height: 32)
                .foregroundColor(Color("TextHint"))
        }.frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
    }
}

struct ListItemTask_Previews: PreviewProvider {
    static var previews: some View {
        ListItemTask(task: dummyTasks[0])
    }
}
