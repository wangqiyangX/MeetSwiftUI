//
//  MSContentUnavailableViewPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSContentUnavailableViewPage: View {
    var body: some View {
        MSDisplayContainer {
            ContentUnavailableView {
                Label(
                    "No Mail",
                    systemImage: "tray.fill"
                )
            } description: {
                Text(
                    "New mails you receive will appear here."
                )
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSContentUnavailableViewPage()
    }
}
