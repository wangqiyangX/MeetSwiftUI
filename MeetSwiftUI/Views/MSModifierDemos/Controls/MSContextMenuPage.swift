//
//  MSContextMenuPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

#if !os(watchOS)
    import SwiftUI

    struct MSContextMenuPage: View {
        var body: some View {
            MSDisplayContainer {
                Text("Long pressure to trigger context menu")
                    .contextMenu {
                        Button("Button") {

                        }
                        Text("Text")
                        Menu {
                            Button("Second Button") {

                            }
                        } label: {
                            Label("Menu", systemImage: "list.dash")
                        }
                        Button(role: .destructive) {

                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
            }
            .msConfigInspector(.list) {

            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSContextMenuPage()
        }
    }
#endif
