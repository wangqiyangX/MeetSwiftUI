//
//  MSScaledToFitPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSScaledToFitPage: View {
    @State private var useScaledToFit = false

    var body: some View {
        MSDisplayContainer {
            VStack {
                Image("example")
                    .resizable()
                    .if(useScaledToFit) { view in
                        view
                            .scaledToFit()
                    }
            }
            .frame(width: 200, height: 200)
            .border(.red)
        }
        .msConfigInspector {
            Toggle("Use `.scaledToFix()`", isOn: $useScaledToFit)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSScaledToFitPage()
    }
}
