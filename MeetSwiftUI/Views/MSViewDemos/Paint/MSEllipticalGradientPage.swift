//
//  MSEllipticalGradientPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSEllipticalGradientPage: View {
    var body: some View {
        MSDisplayContainer {
            EllipticalGradient(
                colors: [.blue, .blue.opacity(0.5)],
                center: .center,
                startRadiusFraction: 0.0,
                endRadiusFraction: 0.5
            )
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSEllipticalGradientPage()
    }
}
