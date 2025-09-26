//
//  MSGaugePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSGaugePage: View {
    @State private var currentValue = 67.0
    @State private var minValue = 50.0
    @State private var maxValue = 170.0

    var body: some View {
        MSDisplayContainer {
            Gauge(value: currentValue, in: minValue...maxValue) {
                Text("Gauge")
            } currentValueLabel: {
                Text(currentValue.formatted())
            } minimumValueLabel: {
                Text(minValue.formatted())
            } maximumValueLabel: {
                Text(maxValue.formatted())
            }
        }
        .msConfigInspector(
            codeString:
                """
                Gauge(value: currentValue, in: minValue...maxValue) {
                    Text("Gauge")
                } currentValueLabel: {
                    Text(currentValue.formatted())
                } minimumValueLabel: {
                    Text(minValue.formatted())
                } maximumValueLabel: {
                    Text(maxValue.formatted())
                }
                """
        ) {
            Slider(value: $currentValue)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSGaugePage()
    }
}
