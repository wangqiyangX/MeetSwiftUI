//
//  MSGridCellAnchorPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSGridCellAnchorPage: View {
    @State private var anchor: MSAnchorPoint = .top

    var body: some View {
        MSDisplayContainer {
            Grid(horizontalSpacing: 1, verticalSpacing: 1) {
                GridRow {
                    Color.red.frame(width: 60, height: 60)
                    Color.red.frame(width: 60, height: 60)
                }
                GridRow {
                    Color.red.frame(width: 60, height: 60)
                    Color.blue.frame(width: 10, height: 10)
                        .gridCellAnchor(anchor.unitPoint)
                }
            }
        }
        .msConfigInspector {
            Picker("Anchor", selection: $anchor) {
                ForEach(MSAnchorPoint.allCases, id: \.self) { anchor in
                    Text(anchor.displayName)
                }
            }
            if case .custom(let x, let y) = anchor {
                Slider(
                    value: Binding(
                        get: {
                            x
                        },
                        set: { newValue in
                            anchor.updateValues(newValue, y)
                        }
                    ),
                    in: 0...1
                ) {
                    Text("X")
                    Text(x.formatted())
                } minimumValueLabel: {
                    Text("0.0")
                } maximumValueLabel: {
                    Text("1.0")
                }
                Slider(
                    value: Binding(
                        get: {
                            y
                        },
                        set: { newValue in
                            anchor.updateValues(x, newValue)
                        }
                    ),
                    in: 0...1
                ) {
                    Text("Y")
                    Text(y.formatted())
                } minimumValueLabel: {
                    Text("0.0")
                } maximumValueLabel: {
                    Text("1.0")
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSGridCellAnchorPage()
    }
}
