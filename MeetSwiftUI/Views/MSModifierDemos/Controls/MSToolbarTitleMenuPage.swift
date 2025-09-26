//
//  MSToolbarTitleMenuPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

struct MSToolbarTitleMenuPage: View {
    var body: some View {
        MSDisplayContainer {
            Text("ToolbarTitleMenu")
                .toolbarTitleMenu {
                    Button {

                    } label: {
                        Label("Print", systemImage: "printer")
                    }
                }
        }
        .msConfigInspector {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSToolbarTitleMenuPage()
    }
}
