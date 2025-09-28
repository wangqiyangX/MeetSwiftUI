//
//  MSSafeAreaPaddingPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSSafeAreaPaddingPage: View {
    let items = Array(1...10).map { "Item \($0)" }

    @State private var paddingValue: Double = 10
    @State private var edgeSet: MSEdgeSet = .all

    var body: some View {
        MSDisplayContainer {
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                            .frame(width: 100, height: 100)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .background(Color.gray.opacity(0.2))
            }
            .safeAreaPadding(edgeSet.edge, paddingValue)
            .background(Color.yellow.opacity(0.3))
        }
        .msConfigInspector {
            Picker("Edge", selection: $edgeSet) {
                ForEach(MSEdgeSet.allCases, id: \.self) { edge in
                    Text(edge.displayName)
                }
            }
            
            Slider(value: $paddingValue, in: 0...20)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSafeAreaPaddingPage()
    }
}
