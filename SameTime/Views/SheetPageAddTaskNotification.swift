//
//  SheetPageAddTaskNotification.swift
//  SameTime
//
//  Created by wiz on 2021/12/28.
//

import SwiftUI

struct SheetPageAddTaskNotification: View {
    @Binding var selection: Date

    var body: some View {
        DatePickerCustom(selection: $selection)
    }
}

struct SheetPageAddTaskNotification_Previews: PreviewProvider {
    static var previews: some View {
        SheetPageAddTaskNotification(selection: .constant(Date()))
    }
}
