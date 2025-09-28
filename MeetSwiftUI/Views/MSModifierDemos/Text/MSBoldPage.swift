//
//  MSBoldPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSBoldPage: View {
    @State private var useBold = false

    var body: some View {
        MSDisplayContainer {
            Text("Hello, World!")
                .if(useBold) { view in
                    view
                        .bold()
                }
        }
        .msConfigInspector {
            Toggle("Use `.bold()`", isOn: $useBold)
        }
    } 
}

#Preview {
    MSPreviewContainer {
        MSBoldPage()
    }
}
