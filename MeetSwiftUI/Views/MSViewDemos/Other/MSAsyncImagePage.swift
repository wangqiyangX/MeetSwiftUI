//
//  MSAsyncImagePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSAsyncImagePage: View {
    var body: some View {
        MSDisplayContainer {
            AsyncImage(url: URL(string: "https://example.com/icon.png")) {
                image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSAsyncImagePage()
    }
}
