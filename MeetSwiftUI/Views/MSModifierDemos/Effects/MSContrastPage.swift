//
//  MSContrastPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/17.
//

import SwiftUI

struct MSContrastPage: View {
    @State private var contrastAmount: Double = 0.2
    var body: some View {
        MSDisplayContainer {
            Color.blue
                .frame(width: 120, height: 120, alignment: .center)
                .overlay(alignment: .center) {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 60, height: 60, alignment: .center)
                }
                .contrast(contrastAmount)
        }
        .msConfigInspector {
            Slider(value: $contrastAmount, in: -1.0...1.0, step: 0.2) {
                Text("Amount")
            } minimumValueLabel: {
                Text("-1.0")
            } maximumValueLabel: {
                Text("1.0")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSContrastPage()
    }
}
