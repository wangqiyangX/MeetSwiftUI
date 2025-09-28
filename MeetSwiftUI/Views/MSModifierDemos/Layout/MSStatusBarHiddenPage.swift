//
//  MSStatusBarHiddenPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSStatusBarHiddenPage: View {
    #if os(iOS)
        @State private var hidden = false
        var body: some View {
            MSDisplayContainer {
                Button(hidden ? "Hide Status Bar" : "Show Status Bar") {
                    hidden.toggle()
                }
            }
            .statusBarHidden(hidden)
        }
    #else
        var body: some View {
            Text("")
        }
    #endif
}

#Preview {
    MSPreviewContainer {
        MSStatusBarHiddenPage()
    }
}
