//
//  MSDrawingGroupPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/17.
//

import SwiftUI

struct MSDrawingGroupPage: View {

    @State private var animate = false
    @State private var useDrawingGroup = false

    var body: some View {
        MSDisplayContainer {
            complexOverlappingViews()
                .frame(width: 250, height: 250)
                .if(
                    useDrawingGroup,
                    transform: { view in
                        view
                            .drawingGroup()
                    }
                )
                .onAppear {
                    withAnimation(
                        Animation.linear(duration: 2).repeatForever(
                            autoreverses: true
                        )
                    ) {
                        animate.toggle()
                    }
                }
        }
        .msConfigInspector {
            Toggle("Use `.drawingGroup()`", isOn: $useDrawingGroup)
        }
    }

    @ViewBuilder
    private func complexOverlappingViews() -> some View {
        ZStack {
            ForEach(0..<6) { i in
                Circle()
                    .fill(
                        Color(
                            hue: Double(i) / 6,
                            saturation: 0.8,
                            brightness: 0.8
                        )
                    )
                    .frame(width: 120, height: 120)
                    .blur(radius: 10)
                    .scaleEffect(animate ? 1.1 : 0.9)
                    .opacity(animate ? 0.3 : 1.0)
                    .offset(x: CGFloat(i * 10) - 25, y: CGFloat(i * -12) + 30)
                    .animation(
                        .easeInOut(duration: 2).delay(Double(i) * 0.3),
                        value: animate
                    )
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSDrawingGroupPage()
    }
}
