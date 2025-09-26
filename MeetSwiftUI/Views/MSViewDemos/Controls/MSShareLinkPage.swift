//
//  MSShareLinkPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSShareLinkPage: View {
    var body: some View {
        MSDisplayContainer {
            ShareLink(item: URL(string: "https://apple.com")!)
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSShareLinkPage()
    }
}
