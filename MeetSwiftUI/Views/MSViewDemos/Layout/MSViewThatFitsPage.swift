//
//  MSViewThatFitsPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSViewThatFitsPage: View {
    var uploadProgress: Double = 0.6

    var body: some View {
        MSDisplayContainer {
            ViewThatFits(in: .horizontal) {
                HStack {
                    Text("\(uploadProgress.formatted(.percent))")
                    ProgressView(value: uploadProgress)
                        .frame(width: 100)
                }
                ProgressView(value: uploadProgress)
                    .frame(width: 100)
                Text("\(uploadProgress.formatted(.percent))")
            }
            .frame(width: 100)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSViewThatFitsPage()
    }
}
