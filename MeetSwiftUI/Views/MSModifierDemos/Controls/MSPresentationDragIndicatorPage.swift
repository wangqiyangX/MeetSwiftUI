//
//  MSPresentationDragIndicatorPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/15.
//

import SwiftUI

struct MSPresentationDragIndicatorPage: View {
    @State private var showSheet = false
    @State private var showDragIndicator = false

    var body: some View {
        MSDisplayContainer {
            Button("Open Sheet") {
                showSheet = true
            }
            .sheet(isPresented: $showSheet) {
                VStack {

                }
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(
                    showDragIndicator ? .visible : .hidden
                )
            }
        }
        .msConfigInspector {
            Toggle("Show Sheet Drag Indicator", isOn: $showDragIndicator)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSPresentationDragIndicatorPage()
    }
}
