//
//  MSGrayscalePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/17.
//

import SwiftUI

struct MSGrayscalePage: View {
    @State private var grayAmount: Double = 0.2

    var body: some View {
        MSDisplayContainer {
            Color.blue
                .frame(width: 120, height: 120, alignment: .center)
                .grayscale(grayAmount)
        }
        .msConfigInspector {
            Slider(value: $grayAmount, in: 0.0...1.0) {
                Text("Amount")
            } minimumValueLabel: {
                Text("0.0")
            } maximumValueLabel: {
                Text("1.0")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSGrayscalePage()
    }
}
