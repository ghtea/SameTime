//
//  TabBarAddIcon.swift
//  SameTime
//
//  Created by wiz on 2021/12/22.
//

import SwiftUI

struct TabBarAddIcon: View {

    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "plus.app")
            .font(.system(size: 36))
            .frame(width: 32, height: 32)
        }
        .foregroundColor(Color("TabBarIcon"))
        .onTapGesture {
            print("add!!!")
        }
    }
}

struct TabBarAddIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabBarAddIcon()
    }
}
