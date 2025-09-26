//
//  MSItemProviderPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSItemProviderPage: View {
    var body: some View {
        MSDisplayContainer {
            Text("Hello Drag")
                .itemProvider {
                    NSItemProvider(object: "Hello Drag" as NSString)
                }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSItemProviderPage()
    }
}
