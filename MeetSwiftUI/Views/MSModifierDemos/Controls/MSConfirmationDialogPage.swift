//
//  MSConfirmationDialogPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSConfirmationDialogPage: View {
    @State private var isShowingDialog = false

    var body: some View {
        MSDisplayContainer {
            Button("Empty Trash") {
                isShowingDialog = true
            }
            .confirmationDialog(
                "Permanently erase the items in the Trash?",
                isPresented: $isShowingDialog
            ) {
                Button("Empty Trash", role: .destructive) {

                }
                Button("Cancel", role: .cancel) {

                }
            } message: {
                Text("Confirm message")
            }
        }
        .msConfigInspector {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSConfirmationDialogPage()
    }
}
