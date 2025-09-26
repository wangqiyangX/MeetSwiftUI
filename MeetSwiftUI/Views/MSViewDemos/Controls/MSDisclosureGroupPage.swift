//
//  MSDisclosureGroupPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

#if !os(watchOS)
    import SwiftUI

    struct MSDisclosureGroupPage: View {
        struct ToggleStates {
            var oneIsOn: Bool = false
            var twoIsOn: Bool = true
        }
        @State private var toggleStates = ToggleStates()
        @State private var topExpanded: Bool = true

        var body: some View {
            MSDisplayContainer {
                DisclosureGroup("Items", isExpanded: $topExpanded) {
                    Toggle("Toggle 1", isOn: $toggleStates.oneIsOn)
                    Toggle("Toggle 2", isOn: $toggleStates.twoIsOn)
                    DisclosureGroup("Sub-items") {
                        Text("Sub-item 1")
                    }
                }
            }
            .msConfigInspector(
                codeString:
                    """
                    DisclosureGroup("Items", isExpanded: $topExpanded) {
                        Toggle("Toggle 1", isOn: $toggleStates.oneIsOn)
                        Toggle("Toggle 2", isOn: $toggleStates.twoIsOn)
                        DisclosureGroup("Sub-items") {
                            Text("Sub-item 1")
                        }
                    }
                    """
            ) {

            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSDisclosureGroupPage()
        }
    }
#endif
