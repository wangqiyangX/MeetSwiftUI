//
//  MSSheetPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

struct MSSheetPage: View {
    @State private var isShowingSheet = false
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        MSDisplayContainer {
            Button(action: {
                isShowingSheet.toggle()
            }) {
                Text("Open")
            }
            .sheet(
                isPresented: $isShowingSheet,
                onDismiss: didDismiss
            ) {
                VStack {
                    Text("Sheet content")
                    Button(
                        "Dismiss",
                        action: { isShowingSheet.toggle() }
                    )
                }
                .padding()
            }
        }
    }

    func didDismiss() {
        // Handle the dismissing action.
    }
}

#Preview {
    MSPreviewContainer {
        MSSheetPage()
    }
}
