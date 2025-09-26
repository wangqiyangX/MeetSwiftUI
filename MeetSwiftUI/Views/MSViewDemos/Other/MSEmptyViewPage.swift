//
//  MSEmptyViewPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSEmptyViewPage: View {
    var body: some View {
        MSDisplayContainer {
            EmptyView()
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSEmptyViewPage()
    }
}
