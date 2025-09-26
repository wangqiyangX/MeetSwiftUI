//
//  MSNavigationLinkPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSNavigationLinkPage: View {
    var body: some View {
        MSDisplayContainer {
            NavigationStack {
                NavigationLink {
                    Text("Destination")
                } label: {
                    Text("NavigationLink")
                }
            }
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSNavigationLinkPage()
    }
}
