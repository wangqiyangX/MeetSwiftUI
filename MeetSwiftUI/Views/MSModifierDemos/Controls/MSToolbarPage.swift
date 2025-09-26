//
//  MSToolbarPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

struct MSToolbarPage: View {
    @State private var groupPlacement: ToolbarItemPlacement = .primaryAction

    var body: some View {
        MSDisplayContainer {
            Text("Toolbar")
                .toolbar {
                    ToolbarItemGroup(placement: groupPlacement) {
                        Button {

                        } label: {
                            Label("Edit", systemImage: "square.and.pencil")
                        }
                    }
                    ToolbarItem(placement: .primaryAction) {
                        Button {

                        } label: {
                            Label("Share", systemImage: "square.and.arrow.up")
                        }
                    }
                }
        }
        .msConfigInspector {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSToolbarPage()
    }
}
