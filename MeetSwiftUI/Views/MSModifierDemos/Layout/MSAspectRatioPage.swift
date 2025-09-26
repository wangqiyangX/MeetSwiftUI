//
//  MSAspectRatioPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/22.
//

import SwiftUI

struct MSAspectRatioPage: View {
    @State private var aspectRatio = 0.75

    var body: some View {
        MSDisplayContainer {
            Ellipse()
                .fill(Color.purple)
                .aspectRatio(aspectRatio, contentMode: .fill)
                .frame(width: 200, height: 200)
                .border(Color(white: 0.75))
        }
        .msConfigInspector {
            Slider(value: $aspectRatio, in: 0.5...1.5) {
                Text("Ratio")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSAspectRatioPage()
    }
}
