//
//  MSMenuIndicatorPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

#if !os(watchOS)
    import SwiftUI

    enum MenuIndicatorOption: String, CaseIterable, Identifiable {
        case automatic
        case visible
        case hidden

        var id: Self { self }

        var displayName: String {
            switch self {
            case .automatic: "Automatic"
            case .visible: "Visible"
            case .hidden: "Hidden"
            }
        }

        var visibility: Visibility {
            switch self {
            case .automatic: .automatic
            case .visible: .visible
            case .hidden: .hidden
            }
        }

        @ViewBuilder
        func applyStyle<Content: View>(
            @ViewBuilder content: @escaping () -> Content
        ) -> some View {
            switch self {
            case .automatic:
                content()
                    .menuIndicator(.automatic)
            case .visible:
                content()
                    .menuIndicator(.visible)
            case .hidden:
                content()
                    .menuIndicator(.hidden)
            }
        }
    }

    struct MSMenuIndicatorPage: View {
        @State private var selected: MenuIndicatorOption = .automatic

        var body: some View {
            MSDisplayContainer {
                selected.applyStyle {
                    Menu("Menu") {
                        Button("Option 1") {}
                        Button("Option 2") {}
                        Button("Option 3") {}
                    }
                }
            }
            .msConfigInspector {
                Picker("Menu Indicator", selection: $selected) {
                    ForEach(MenuIndicatorOption.allCases) { option in
                        Text(option.displayName)
                    }
                }
            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSMenuIndicatorPage()
        }
    }
#endif
