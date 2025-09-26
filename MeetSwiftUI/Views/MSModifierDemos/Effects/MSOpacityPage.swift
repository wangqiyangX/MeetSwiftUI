//
//  MSOpacityPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/18.
//

import SwiftUI

struct MSOpacityPage: View {
    @State private var opacityValue = 0.5

    var body: some View {
        MSDisplayContainer {
            Color.red
                .opacity(opacityValue)
        }
        .msConfigInspector {
            Slider(value: $opacityValue, in: 0...1) {
                Text("Opacity")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSOpacityPage()
    }
}
