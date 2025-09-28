//
//  MSScenePaddingPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSScenePaddingPage: View {
    @State private var selectedEdgeSet: MSEdgeSet = .all

    var body: some View {
        MSDisplayContainer {
            VStack(alignment: .leading) {
                Text("Scene Padding")
                    .scenePadding(selectedEdgeSet.edge)
                    .border(.red)
            }
        }
        .msConfigInspector {
            Picker("Edge", selection: $selectedEdgeSet) {
                ForEach(MSEdgeSet.allCases, id: \.self) { edge in
                    Text(edge.displayName)
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSScenePaddingPage()
    }
}
