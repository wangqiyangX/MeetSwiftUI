//
//  MSFramePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSFramePage: View {
    @State private var width: Double = 120
    @State private var minWidth: Double = 100
    @State private var idealWidth: Double = 120
    @State private var maxWidth: Double = 140

    @State private var height: Double = 120
    @State private var minHeight: Double = 100
    @State private var idealHeight: Double = 120
    @State private var maxHeight: Double = 140

    var body: some View {
        MSDisplayContainer {
            Color.purple
                .frame(width: width, height: height)
                .frame(
                    minWidth: minWidth,
                    idealWidth: idealWidth,
                    maxWidth: maxWidth
                )
                .frame(
                    minHeight: minHeight,
                    idealHeight: idealHeight,
                    maxHeight: maxHeight
                )
        }
        .msConfigInspector {
            Section("Width") {
                Slider(value: $width, in: 120...maxWidth, step: 10) {
                    Text("Width")
                }
            }
            Section("Width") {
                Slider(value: $height)
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSFramePage()
    }
}
