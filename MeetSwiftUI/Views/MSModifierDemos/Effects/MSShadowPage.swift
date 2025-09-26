//
//  MSShadowPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/19.
//

import SwiftUI

struct MSShadowPage: View {
    @State private var color: Color = .secondary
    @State private var radius: Double = 4
    @State private var xOffset: Double = 0
    @State private var yOffset: Double = 0

    var body: some View {
        MSDisplayContainer {
            RoundedRectangle(cornerRadius: 10)
                .fill(.blue)
                .frame(width: 200, height: 200)
                .shadow(color: color, radius: radius, x: xOffset, y: yOffset)
        }
        .msConfigInspector {
            #if !os(watchOS)
                ColorPicker("Shadow Color", selection: $color)
            #endif
            Slider(value: $radius, in: 0...20) {
                Text("Radius")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("20")
            }
            Slider(value: $xOffset, in: 0...10) {
                Text("X Offset")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("10")
            }
            Slider(value: $yOffset, in: 0...10) {
                Text("Y Offset")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("10")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSShadowPage()
    }
}
