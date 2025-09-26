//
//  MSContainerRelativeFramePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/23.
//

import SwiftUI

/// 用来让子视图根据容器的尺寸自动调整自己在容器中的大小和对齐方式。
struct MSContainerRelativeFramePage: View {
    var body: some View {
        MSDisplayContainer {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1..<6) { index in
                        Text("Item \(index)")
                            .font(.headline)
                            .padding()
                            .background(Color.blue.opacity(0.2))
                            .containerRelativeFrame(
                                .horizontal,
                                count: 3,
                                spacing: 10,
                                alignment: .center
                            )
                    }
                }
                .padding()
            }
        }
        .msConfigInspector {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSContainerRelativeFramePage()
    }
}
