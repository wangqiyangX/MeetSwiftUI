//
//  MSNavigationSplitViewPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSNavigationSplitViewPage: View {
    var body: some View {
        MSDisplayContainer {
            NavigationSplitView {
                Text("Sidebar")
            } detail: {
                Text("Detail")
            }
            .padding()
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer(withNavigationStack: false) {
        MSNavigationSplitViewPage()
    }
}
