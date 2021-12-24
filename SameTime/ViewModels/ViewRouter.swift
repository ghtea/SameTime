//
//  ViewRouter.swift
//  SameTime
//
//  Created by wiz on 2021/12/24.
//

import Foundation

class ViewRouter: ObservableObject {
    @Published var currentPageId: PageId = .home
}

enum PageId {
    case home
    case calendar
    case plan
    case settings
}
