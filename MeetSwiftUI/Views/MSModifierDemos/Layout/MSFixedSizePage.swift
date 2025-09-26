//
//  MSFixedSizePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSFixedSizePage: View {
    @State private var useHorizontal = true
    @State private var useVertical = false

    var body: some View {
        MSDisplayContainer {
            Text("A single line of text, too long to fit in a box.")
                .fixedSize(horizontal: useHorizontal, vertical: useVertical)
                .frame(width: 200, height: 200)
                .border(Color.gray)
        }
        .msConfigInspector {
            Toggle("Horizontal", isOn: $useHorizontal)
            Toggle("Vertical", isOn: $useVertical)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSFixedSizePage()
    }
}
