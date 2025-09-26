//
//  MSGroupBoxPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

#if !os(watchOS)
    import SwiftUI

    struct MSGroupBoxPage: View {
        var body: some View {
            MSDisplayContainer {
                GroupBox {
                    Text("Group Box Content")
                } label: {
                    Label("End-User Agreement", systemImage: "building.columns")
                }
            }
            .msConfigInspector {

            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSGroupBoxPage()
        }
    }
#endif
