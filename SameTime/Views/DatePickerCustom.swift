//
//  DatePickerCustom.swift
//  SameTime
//
//  Created by wiz on 2021/12/28.
//

import SwiftUI

struct DatePickerCustom: View {
    @Binding var selection: Date
    @State var hour: Int = 12
    @State var minute: Int = 0

    var body: some View {
        GeometryReader { geometry in
            HStack {
                Picker("", selection: $hour) {
                    ForEach(0...23, id: \.self) {
                        Text("\($0)").tag($0)
                    }
                }
                .pickerStyle(.wheel)
                .frame(maxWidth: geometry.size.width / 2)
                .frame(height: 160)
                .compositingGroup()
                .clipped()

                Picker("", selection: $minute) {
                    ForEach([0, 30], id: \.self) {
                        Text("\($0)").tag($0)
                    }
                }
                .pickerStyle(.wheel)
                .frame(maxWidth: geometry.size.width / 2)
                .frame(height: 160)
                .clipped()
            }
        }
    }
}

struct DatePickerCustom_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerCustom(selection: .constant(Date()))
    }
}
