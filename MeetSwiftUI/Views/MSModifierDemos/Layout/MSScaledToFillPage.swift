//
//  MSScaledToFillPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSScaledToFillPage: View {
    @State private var useScaledToFill = false
    var body: some View {
        MSDisplayContainer {
            VStack {
                Image("example")
                    .resizable()
                    .if(useScaledToFill) { view in
                        view.scaledToFill()
                    }
            }
            .frame(width: 200, height: 200)
            .border(.red)
        }
        .msConfigInspector {
            Toggle("Use `.scaledToFill()`", isOn: $useScaledToFill)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSScaledToFillPage()
    }
}
