//
//  MSMaskPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/18.
//

import SwiftUI

struct MSMaskPage: View {
    @State private var useMask = true

    var body: some View {
        MSDisplayContainer {
            Image(systemName: "envelope.badge.fill")
                .font(.system(size: 128, weight: .regular))
                .if(useMask) { view in
                    view
                        .mask(alignment: .leading) {
                            Rectangle()
                                .opacity(0.1)
                        }
                }
        }
        .msConfigInspector {
            Toggle("Use `.mask(alignment:_:)`", isOn: $useMask)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSMaskPage()
    }
}
