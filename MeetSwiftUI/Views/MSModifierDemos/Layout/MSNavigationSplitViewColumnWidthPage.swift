//
//  MSNavigationSplitViewColumnWidthPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSNavigationSplitViewColumnWidthPage: View {
    var body: some View {
        MSDisplayContainer {
            NavigationSplitView {
                Text("Sidebar")
                    .navigationSplitViewColumnWidth(150)
            } content: {
                Text("Contents")
                    .navigationSplitViewColumnWidth(
                        min: 150,
                        ideal: 200,
                        max: 400
                    )
            } detail: {
                Text("Detail")
            }
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSNavigationSplitViewColumnWidthPage()
    }
}
