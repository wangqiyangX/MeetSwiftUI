//
//  MSLabeledContentPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSLabeledContentPage: View {
    var body: some View {
        MSDisplayContainer {
            LabeledContent {
                Text("Left View")
            } label: {
                Label("Right Value", systemImage: "hammer")
            }
        }
        .msConfigInspector(.list) {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSLabeledContentPage()
    }
}
