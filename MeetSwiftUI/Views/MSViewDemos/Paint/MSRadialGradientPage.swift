//
//  MSRadialGradientPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSRadialGradientPage: View {
    var body: some View {
        MSDisplayContainer {
            RadialGradient(
                gradient: Gradient(colors: [.purple, .cyan]),
                center: .center,
                startRadius: 5,
                endRadius: 500
            )
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSRadialGradientPage()
    }
}
