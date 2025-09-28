//
//  MSConfig.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

@Observable
final class MSConfig {
    var searchString = ""

    var showCodeBlock = false
    var showInspectorView = false
    var useGroupedFormStype = false

    var containerType: MSContainerType = .vStack
    var selectedTab: NavigationOptions = .views {
        didSet {
            selectedMSViews = nil
            selectedMSModifiers = nil
            selectedSymbol = nil
            selectedColor = nil
        }
    }
    var selectedMSViews: MSViews?
    var selectedMSModifiers: MSModifier?
    var selectedSymbol: String?
    var selectedColor: MSColors?
}
