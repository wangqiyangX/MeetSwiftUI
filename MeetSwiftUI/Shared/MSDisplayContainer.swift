//
//  MSDisplayContainer.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSDisplayContainer<Content: View>: View {
    let content: Content

    @Environment(MSConfig.self) private var config

    init(
        @ViewBuilder content: () -> Content
    ) {
        self.content = content()
    }

    var body: some View {
        Group {
            switch config.containerType {
            case .list:
                List {
                    content
                }
            case .form:
                Form {
                    content
                }
                #if os(macOS)
                    .if(
                        config.useGroupedFormStype,
                        transform: { view in
                            view
                                .formStyle(.grouped)
                        }
                    )
                #endif
            case .vStack:
                VStack {
                    content
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

extension View {
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(
        _ condition: Bool,
        transform: (Self) -> Content
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSDisplayContainer {
            Text("Something")
        }
        .navigationTitle("Navigation Title")
        #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
        #endif
        .msConfigInspector {

        }
    }
}
