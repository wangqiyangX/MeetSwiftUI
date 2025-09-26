//
//  MSPopoverPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

#if !os(watchOS)
    import SwiftUI

    struct MSPopoverPage: View {
        @State private var isShowingPopover = false

        var body: some View {
            MSDisplayContainer {
                Button("Show Popover") {
                    self.isShowingPopover = true
                }
                .popover(
                    isPresented: $isShowingPopover,
                    attachmentAnchor: .rect(.bounds),
                    arrowEdge: .top
                ) {
                    Text("Popover Content")
                        .padding()
                }
            }
            .msConfigInspector {

            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSPopoverPage()
        }
    }
#endif
