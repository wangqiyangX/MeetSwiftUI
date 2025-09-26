//
//  MSBrightnessPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

struct MSBrightnessPage: View {
    @State private var brightnessAmount: Double = 0.2

    var body: some View {
        MSDisplayContainer {
            Color.red
                .brightness(brightnessAmount)
        }
        .msConfigInspector {
            Slider(value: $brightnessAmount, in: 0.0...1.0) {
                Text("Brightness")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSBrightnessPage()
    }
}
