//
//  MSGridCellUnsizedAxes.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSGridCellUnsizedAxes: View {
    @State private var useGridCellUnsizedAxes = false

    var body: some View {
        MSDisplayContainer {
            Grid {
                GridRow {
                    Text("Hello")
                    Image(systemName: "globe")
                }
                Divider()
                    .if(
                        useGridCellUnsizedAxes,
                        transform: { view in
                            view
                                .gridCellUnsizedAxes(.horizontal)
                        }
                    )
                GridRow {
                    Image(systemName: "hand.wave")
                    Text("World")
                }
            }
        }
        .msConfigInspector {
            Toggle(
                "Use `.gridCellUnsizedAxes()`",
                isOn: $useGridCellUnsizedAxes
            )
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSGridCellUnsizedAxes()
    }
}
