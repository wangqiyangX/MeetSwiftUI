//
//  MSNavigationViewPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSNavigationViewPage: View {
    var body: some View {
        MSDisplayContainer {
            NavigationView {
                NavigationLink {
                    Text("Detail")
                } label: {
                    Text("Link")
                }
            }
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer(withNavigationStack: false) {
        MSNavigationViewPage()
    }
}
