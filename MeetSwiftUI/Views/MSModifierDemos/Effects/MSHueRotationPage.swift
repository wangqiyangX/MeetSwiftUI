//
//  MSHueRotationPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/17.
//

import SwiftUI

struct MSHueRotationPage: View {
    @State private var hueRatationDegree: Double = 0.0

    var body: some View {
        MSDisplayContainer {
            Rectangle()
                .fill(
                    .linearGradient(
                        colors: [.red, .orange, .yellow, .green, .cyan, .blue, .purple],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .hueRotation((.degrees(hueRatationDegree)))
        }
        .msConfigInspector {
            Slider(value: $hueRatationDegree, in: 0...360) {
                Text("Degree")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSHueRotationPage()
    }
}
