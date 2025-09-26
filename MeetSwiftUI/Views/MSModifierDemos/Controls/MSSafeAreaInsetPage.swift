//
//  MSSafeAreaInsetPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/15.
//

import SwiftUI

struct MSSafeAreaInsetPage: View {
    @State private var spacing = 10.0
    @State private var honrizontalAlignment: HorizontalAlignment = .center
    @State private var verticalAlignment: VerticalAlignment = .center

    @State private var showTopEdgeInset = false
    @State private var showBottomEdgeInset = false
    @State private var showLeadingEdgeInset = false
    @State private var showTrailingEdgeInset = false

    var body: some View {
        MSDisplayContainer {
            VStack {
                Text("Main Content")
                    .font(.title)
            }
            .border(.red)
            .if(
                showTopEdgeInset,
                transform: { view in
                    view
                        .safeAreaInset(
                            edge: .top,
                            alignment: honrizontalAlignment,
                            spacing: spacing
                        ) {
                            Text("Top")
                                .border(.blue)
                        }
                }
            )
            .if(
                showBottomEdgeInset,
                transform: { view in
                    view
                        .safeAreaInset(
                            edge: .bottom,
                            alignment: honrizontalAlignment,
                            spacing: spacing
                        ) {
                            Text("Bottom")
                                .border(.blue)
                        }
                }
            )
            .if(
                showLeadingEdgeInset,
                transform: { view in
                    view
                        .safeAreaInset(
                            edge: .leading,
                            alignment: verticalAlignment,
                            spacing: spacing
                        ) {
                            Text("Leading")
                                .border(.blue)
                        }
                }
            )
            .if(showTrailingEdgeInset) { view in
                view
                    .safeAreaInset(
                        edge: .trailing,
                        alignment: verticalAlignment,
                        spacing: spacing
                    ) {
                        Text("Trailing")
                            .border(.blue)
                    }
            }
        }
        .msConfigInspector {
            Section {
                Toggle("Show Top Inset", isOn: $showTopEdgeInset)
                Toggle("Show Bottom Inset", isOn: $showBottomEdgeInset)
                Toggle("Show Leading Inset", isOn: $showLeadingEdgeInset)
                Toggle("Show Trailing Inset", isOn: $showTrailingEdgeInset)
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSafeAreaInsetPage()
    }
}
