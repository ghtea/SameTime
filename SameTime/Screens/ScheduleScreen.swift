//
//  ScheduleScreen.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct ScheduleScreen: View {
    var body: some View {
        NavigationView {
            Text("Schedule")
                .navigationTitle("Schedule")
                .navigationBarTitleDisplayMode(.inline)
        }

    }
}

struct ScheduleScreen_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleScreen()
    }
}
