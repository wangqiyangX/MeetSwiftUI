//
//  MSColorInvertPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/17.
//

import SwiftUI

struct MSColorInvertPage: View {
    @State private var currentColor: Color = .red
    @State private var useColorInvert = false

    var body: some View {
        MSDisplayContainer {
            currentColor
                .if(useColorInvert) { view in
                    view
                        .colorInvert()
                }
        }
        .msConfigInspector {
            Toggle("Use `.colorInvert()`", isOn: $useColorInvert)
            #if !os(watchOS)
                ColorPicker("Color", selection: $currentColor)
            #endif
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSColorInvertPage()
    }
}
