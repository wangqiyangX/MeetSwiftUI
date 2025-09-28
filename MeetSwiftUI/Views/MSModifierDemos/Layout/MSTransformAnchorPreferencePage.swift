//
//  MSTransformAnchorPreferencePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct RectPreferenceKey: PreferenceKey {
    static var defaultValue: [Anchor<CGRect>] = []
    static func reduce(
        value: inout [Anchor<CGRect>],
        nextValue: () -> [Anchor<CGRect>]
    ) {
        value.append(contentsOf: nextValue())
    }
}

struct MSTransformAnchorPreferencePage: View {
    var body: some View {
        MSDisplayContainer {
            VStack(spacing: 60) {
                Text("Hello")
                    .padding()
                    .border(.green)
                    .transformAnchorPreference(
                        key: RectPreferenceKey.self,
                        value: .bounds
                    ) { preferences, anchor in
                        preferences.append(anchor)
                    }

                Text("World")
                    .transformAnchorPreference(
                        key: RectPreferenceKey.self,
                        value: .bounds
                    ) { preferences, anchor in
                        preferences.append(anchor)
                    }
                    .padding()
                    .border(.blue)
            }
            .backgroundPreferenceValue(RectPreferenceKey.self) { anchors in
                GeometryReader { proxy in
                    ZStack {
                        ForEach(Array(anchors.enumerated()), id: \.offset) {
                            _,
                            anchor in
                            let rect = proxy[anchor]
                            
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 10, height: 4)
                                .position(x: rect.minX + 5, y: rect.maxY)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSTransformAnchorPreferencePage()
    }
}
