//
//  MSSaturationPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/19.
//

import SwiftUI

struct MSSaturationPage: View {
    @State private var saturationValue: Double = 0.2

    var body: some View {
        MSDisplayContainer {
            Color.red
                .saturation(saturationValue)
        }
        .msConfigInspector {
            Slider(value: $saturationValue, in: 0...1, step: 0.2) {
                Text("Amount")
            } minimumValueLabel: {
                Text("Gray")
            } maximumValueLabel: {
                Text("Red")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSaturationPage()
    }
}
