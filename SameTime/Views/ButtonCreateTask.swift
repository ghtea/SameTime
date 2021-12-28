//
//  ButtonCreateTask.swift
//  SameTime
//
//  Created by wiz on 2021/12/25.
//

import SwiftUI

struct ButtonCreateTask: View {
    @State private var isOpenDialog = false

    func onDismiss () {
        isOpenDialog = false
    }

    var body: some View {
        HStack {
            Image(systemName: "plus.circle")
            .font(.system(size: 28))
            // .frame(width: 32, height: 32)
            Text("Add Task")
                .font(.system(size: 24))
        }
        .foregroundColor(Color("Primary"))
        .onTapGesture {
            isOpenDialog = true
        }
        .sheet(isPresented: $isOpenDialog, onDismiss: onDismiss) {
            SheetAddTask(isOpenSheet: $isOpenDialog)
        }
    }
}

struct ButtonCreateTask_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCreateTask()
    }
}
