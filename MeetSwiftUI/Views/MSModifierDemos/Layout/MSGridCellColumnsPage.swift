//
//  MSGridCellColumnsPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSGridCellColumnsPage: View {
    @State private var span: Int = 2

    var body: some View {
        MSDisplayContainer {
            Grid {
                GridRow {
                    Color.red
                        .frame(height: 50)
                        .gridCellColumns(span)

                    Color.blue
                        .frame(height: 50)
                }

                GridRow {
                    Color.green
                        .frame(height: 50)

                    Color.orange
                        .frame(height: 50)

                    Color.purple
                        .frame(height: 50)
                }
            }
            .padding()
            .border(.black)
            .padding()
        }
        .msConfigInspector {
            Stepper(value: $span, in: 1...3) {
                Text("Span")
                Text(span.formatted())
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSGridCellColumnsPage()
    }
}
