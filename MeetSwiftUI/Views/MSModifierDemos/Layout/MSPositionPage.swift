//
//  MSPositionPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/25.
//

import SwiftUI

struct MSPositionPage: View {
    @State private var positionX: Double = 0
    @State private var positionY: Double = 0

    var body: some View {
        MSDisplayContainer {
            VStack {
                Rectangle()
                    .fill(.red.gradient.opacity(0.6))
                    .frame(width: 50, height: 50)
                    .position(x: positionX, y: positionY)
            }
            .frame(width: 200, height: 200)
            .border(.red)
        }
        .msConfigInspector {
            Slider(value: $positionX.animation(), in: 0...200) {
                Text("Position X")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("200")
            }
            Slider(value: $positionY.animation(), in: 0...200) {
                Text("Position Y")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("200")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSPositionPage()
    }
}
