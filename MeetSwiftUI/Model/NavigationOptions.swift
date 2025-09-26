//
//  NavigationOptions.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/15.
//

import SwiftUI

enum NavigationOptions: Equatable, Hashable, Identifiable, CaseIterable {
    case views
    case modifiers
    case symbols
    case colors

    static let tabs: [NavigationOptions] = [
        .views, .modifiers, .symbols, .colors,
    ]

    var id: String {
        switch self {
        case .views:
            "Views"
        case .modifiers:
            "Modifiers"
        case .symbols:
            "Symbols"
        case .colors:
            "Colors"
        }
    }

    var name: LocalizedStringResource {
        switch self {
        case .views:
            return LocalizedStringResource(
                "Views",
                comment: "Title for the tab, shown in the sidebar."
            )
        case .modifiers:
            return LocalizedStringResource(
                "Modifiers",
                comment: "Title for the tab, shown in the sidebar."
            )
        case .symbols:
            return LocalizedStringResource(
                "Symbols",
                comment: "Title for the tab, shown in the sidebar."
            )
        case .colors:
            return LocalizedStringResource(
                "Colors",
                comment: "Title for the tab, shown in the sidebar."
            )
        }
    }

    var symbolName: String {
        switch self {
        case .views:
            "circle.square"
        case .modifiers:
            "slider.horizontal.3"
        case .symbols:
            "star.circle"
        case .colors:
            "paintpalette"
        }
    }

    @MainActor @ViewBuilder func listViewForPage() -> some View {
        switch self {
        case .views:
            MSViewsListView()
        case .modifiers:
            MSModifierListView()
        case .symbols:
            MSSymbolsListView()
        case .colors:
            MSColorsListView()
        }
    }
}
