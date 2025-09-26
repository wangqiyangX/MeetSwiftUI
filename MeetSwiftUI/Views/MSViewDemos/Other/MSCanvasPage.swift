//
//  MSCanvasPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSCanvasPage: View {
    var body: some View {
        MSDisplayContainer {
            Canvas { context, size in
                context.stroke(
                    Path(ellipseIn: CGRect(origin: .zero, size: size)),
                    with: .color(.green),
                    lineWidth: 4
                )
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSCanvasPage()
    }
}
