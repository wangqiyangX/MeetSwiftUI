//
//  MSAngularGradientPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSAngularGradientPage: View {
    var body: some View {
        MSDisplayContainer {
            AngularGradient(
                colors: [
                    .red, .orange, .yellow, .green, .cyan, .blue, .purple,
                ],
                center: .center,
                angle: .degrees(0)
            )
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSAngularGradientPage()
    }
}
