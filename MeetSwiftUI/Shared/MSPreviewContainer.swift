//
//  MSPreviewContainer.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSPreviewContainer<Content: View>: View {
    let content: Content
    let withNavigationStack: Bool

    init(
        withNavigationStack: Bool = true,
        @ViewBuilder content: () -> Content
    ) {
        self.withNavigationStack = withNavigationStack
        self.content = content()
    }

    var body: some View {
        Group {
            if withNavigationStack {
                NavigationStack {
                    content
                }
            } else {
                content
            }
        }
        .environment(MSConfig())
    }
}

struct MSWithNavigationStack: ViewModifier {
    let withNavigationStack: Bool

    func body(content: Content) -> some View {
        Group {
            if withNavigationStack {
                NavigationStack {
                    content
                }
            } else {
                content
            }
        }
    }
}
