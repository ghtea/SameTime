//
//  PlanScreen.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct PlanScreen: View {
    var body: some View {
        NavigationView {
            Text("Plan")
                .navigationTitle("Plan")
                .navigationBarTitleDisplayMode(.inline)
        }

    }
}

struct PlanScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlanScreen()
    }
}
