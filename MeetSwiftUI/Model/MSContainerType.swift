//
//  MSContainerType.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

enum MSContainerType: CaseIterable {
    case list
    case form
    case vStack

    var name: String {
        switch self {
        case .list:
            "List"
        case .form:
            "Form"
        case .vStack:
            "VStack"
        }
    }
}
