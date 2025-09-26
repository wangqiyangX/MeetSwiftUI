//
//  MSBlurPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

struct MSBlurPage: View {
    @State private var blurRadius: Double = 2.0
    @State private var useOpaque = false
    var body: some View {
        MSDisplayContainer {
            VStack {
                Text("This is some text.")
                    .padding()
                Text("This is some blurry text.")
                    .blur(radius: blurRadius)
            }
        }
        .msConfigInspector {
            Slider(value: $blurRadius, in: 0.0...10.0) {
                Text("Radius")
            }
            Toggle("Use Opaque", isOn: $useOpaque)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSBlurPage()
    }
}
