//
//  MSBaselineOffsetPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSBaselineOffsetPage: View {
    @State private var offsetValue: Double = 0

    var body: some View {
        MSDisplayContainer {
            Text("Hello, World!")
                .baselineOffset(offsetValue)
                .border(Color.red)
        }
        .msConfigInspector {
            Slider(value: $offsetValue, in: -20...20)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSBaselineOffsetPage()
    }
}
