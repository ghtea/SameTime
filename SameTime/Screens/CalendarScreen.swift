//
//  CalendarScreen.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct CalendarScreen: View {
    var body: some View {
        NavigationView {
            Text("Goals")
                .navigationTitle("Goals")
                .navigationBarTitleDisplayMode(.inline)
        }

    }
}

struct CalendarScreen_Previews: PreviewProvider {
    static var previews: some View {
        CalendarScreen()
    }
}
