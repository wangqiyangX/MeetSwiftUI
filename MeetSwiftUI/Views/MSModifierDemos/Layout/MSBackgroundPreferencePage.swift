//
//  MSBackgroundPreferencePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/23.
//

import SwiftUI

struct BoundsPreferenceKey: PreferenceKey {
    static var defaultValue: [CGRect] = []
    static func reduce(value: inout [CGRect], nextValue: () -> [CGRect]) {
        value.append(contentsOf: nextValue())
    }
}

struct MSBackgroundPreferencePage: View {
    let items = Array(1...5)

    @State private var useBackgroundPreference = true

    var body: some View {
        MSDisplayContainer {
            VStack {
                ForEach(items, id: \.self) { item in
                    Text("Item \(item)")
                        .padding()
                        .background(
                            GeometryReader { proxy in
                                Color.clear.preference(
                                    key: BoundsPreferenceKey.self,
                                    value: [
                                        proxy.frame(in: .named("container"))
                                    ]
                                )
                            }
                        )
                        .border(Color.gray)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                }
            }
            .if(
                useBackgroundPreference,
                transform: { view in
                    view
                        .backgroundPreferenceValue(BoundsPreferenceKey.self) {
                            rects in
                            GeometryReader { proxy in
                                ZStack {
                                    ForEach(rects.indices, id: \.self) {
                                        index in
                                        let rect = rects[index]

                                        Rectangle()
                                            .fill(
                                                index.isMultiple(of: 2)
                                                    ? Color.blue.opacity(0.2)
                                                    : Color.red.opacity(0.2)
                                            )
                                            .frame(
                                                width: rect.width,
                                                height: rect.height
                                            )
                                            .position(
                                                x: rect.midX,
                                                y: rect.midY
                                            )
                                    }
                                }
                            }
                        }
                }
            )
            .coordinateSpace(name: "container")
            .border(Color.black)
        }
        .msConfigInspector {
            Toggle(
                "Use `.backgroundPreferenceValue()`",
                isOn: $useBackgroundPreference
            )
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSBackgroundPreferencePage()
    }
}
