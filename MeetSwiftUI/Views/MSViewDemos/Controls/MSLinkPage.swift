//
//  MSLinkPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSLinkPage: View {
    var body: some View {
        MSDisplayContainer {
            Link(destination: URL(string: "https//:apple.com")!) {
                Label("Link", systemImage: "safari")
            }
        }
        .msConfigInspector {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSLinkPage()
    }
}
