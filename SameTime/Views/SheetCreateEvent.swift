//
//  SheetCreateEvent.swift
//  SameTime
//
//  Created by wiz on 2021/12/24.
//

import SwiftUI

struct SheetCreateEvent: View {
    @Binding var isOpenSheet: Bool
    @State var startDate: Date = Date()
    @State var endDate: Date = Date()

    var body: some View {
        VStack(alignment: .center) {
            Text("Add Event")
                .font(.title2)
                .padding(.top, 20)
            
            VStack(alignment: .leading) {
                Text("Start Time")
                HStack {
                    DatePicker("", selection: $startDate,
                               displayedComponents: .date)
                        .labelsHidden()
                    DatePicker("", selection: $startDate,
                               displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }
            }.padding(.top, 20)
            
            VStack(alignment: .leading) {
                Text("End Time")
                HStack {
                    DatePicker("", selection: $endDate,
                               displayedComponents: .date)
                        .labelsHidden()
                    DatePicker("", selection: $endDate,
                               displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }
            }.padding(.top, 20)
            
            Spacer()
            Button("Dismiss",
                   action: { isOpenSheet.toggle() })
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
    
}

struct SheetCreateEvent_Previews: PreviewProvider {
    static var previews: some View {
        SheetCreateEvent(isOpenSheet: .constant(true))
    }
}
