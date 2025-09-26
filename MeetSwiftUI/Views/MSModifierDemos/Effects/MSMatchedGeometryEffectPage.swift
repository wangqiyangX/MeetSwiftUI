//
//  MSMatchedGeometryEffectPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/18.
//

import SwiftUI

struct MSMatchedGeometryEffectPage: View {
    @Namespace private var msNamespace
    @State private var useMatchedGeometryEffect = true
    @State private var showDetail = false

    var body: some View {
        MSDisplayContainer {
            if !showDetail {
                Circle()
                    .fill(Color.pink)
                    .frame(width: 80, height: 80)
                    .if(
                        useMatchedGeometryEffect,
                        transform: { view in
                            view
                                .matchedGeometryEffect(
                                    id: "circle",
                                    in: msNamespace,
                                    properties: [.frame, .position, .size],
                                    anchor: .topLeading
                                )
                        }
                    )
            } else {
                Circle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .if(useMatchedGeometryEffect) { view in
                        view
                            .matchedGeometryEffect(
                                id: "circle",
                                in: msNamespace,
                                properties: [.frame, .position, .size],
                                anchor: .bottomTrailing
                            )
                    }
            }
        }
        .msConfigInspector {
            Toggle("use `.matchedGeometryEffect()`", isOn: $useMatchedGeometryEffect)
            Button("Toggle") {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.7)) {
                    showDetail.toggle()
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSMatchedGeometryEffectPage()
    }
}
