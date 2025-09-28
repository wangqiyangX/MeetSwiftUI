//
//  MSAllowsTighteningPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSAllowsTighteningPage: View {
    @State private var useAllowsTightening = false

    var body: some View {
        MSDisplayContainer {
            VStack {
                Text("This is a wide text element")
                    .font(.body)
                    .frame(width: 200, height: 50, alignment: .leading)
                    .lineLimit(1)
                    .allowsTightening(useAllowsTightening)
            }
        }
        .msConfigInspector {
            Toggle("Use `.allowsTightening()`", isOn: $useAllowsTightening)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSAllowsTighteningPage()
    }
}
