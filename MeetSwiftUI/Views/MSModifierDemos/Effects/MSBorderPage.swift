//
//  MSBorderPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

struct MSBorderPage: View {
    @State private var borderColor: Color = .red
    @State private var borderWidth: Double = 2.0

    var body: some View {
        MSDisplayContainer {
            Text("Border")
                .border(borderColor, width: borderWidth)
        }
        .msConfigInspector {
            #if !os(watchOS)
                ColorPicker("Border Color", selection: $borderColor)
            #endif
            Slider(value: $borderWidth, in: 0.0...10.0)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSBorderPage()
    }
}
