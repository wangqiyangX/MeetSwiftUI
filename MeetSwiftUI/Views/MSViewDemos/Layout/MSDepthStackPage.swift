//
//  MSDepthStackPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSDepthStackPage: View {
    let colors: [Color] =
        [.red, .orange, .yellow, .green, .blue, .purple]

    var body: some View {
        MSDisplayContainer {
            ZStack {
                ForEach(0..<6) {
                    Rectangle()
                        .fill(colors[$0])
                        .frame(width: 100, height: 100)
                        .offset(
                            x: CGFloat($0) * 10.0,
                            y: CGFloat($0) * 10.0
                        )
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSDepthStackPage()
    }
}
