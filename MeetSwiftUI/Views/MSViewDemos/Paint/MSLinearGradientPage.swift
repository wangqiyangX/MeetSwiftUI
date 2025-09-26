//
//  MSLinearGradientPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSLinearGradientPage: View {
    var body: some View {
        MSDisplayContainer {
            LinearGradient(
                gradient: Gradient(colors: [.gray, .black]),
                startPoint: .top,
                endPoint: .bottom
            )
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSLinearGradientPage()
    }
}
