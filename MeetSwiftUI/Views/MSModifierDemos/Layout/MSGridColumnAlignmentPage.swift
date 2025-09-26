//
//  MSGridColumnAlignmentPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSGridColumnAlignmentPage: View {
    var body: some View {
        MSDisplayContainer {
            Grid {
                GridRow {
                    Color.red
                        .frame(width: 50, height: 50)
                        .gridColumnAlignment(.trailing)
                    Color.blue
                        .frame(width: 50, height: 50)
                        .gridColumnAlignment(.center)
                    Color.green
                        .frame(width: 50, height: 50)
                        .gridColumnAlignment(.leading)
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
    }
}

#Preview {
    MSPreviewContainer {
        MSGridColumnAlignmentPage()
    }
}
