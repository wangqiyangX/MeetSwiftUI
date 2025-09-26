//
//  MSClipShapePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

enum ClipShape: CaseIterable {
    case circle
    case rect
    case capsule

    var name: String {
        switch self {
        case .circle:
            "Circle"
        case .rect:
            "Rectangle"
        case .capsule:
            "Capsule"
        }
    }

    @ViewBuilder
    func applyStyle<Content: View>(
        @ViewBuilder content: @escaping () -> Content
    ) -> some View {
        switch self {
        case .circle:
            content()
                .clipShape(Circle())
                .border(.black)
        case .rect:
            content()
                .clipShape(Rectangle())
                .border(.black)
        case .capsule:
            content()
                .clipShape(Capsule())
                .border(.black)
        }
    }
}

struct MSClipShapePage: View {
    @State private var selectedClipShape: ClipShape = .circle

    var body: some View {
        MSDisplayContainer {
            selectedClipShape.applyStyle {
                Text("Clipped text in a circle")
                    .frame(width: 175, height: 100)
                    .foregroundStyle(.primary)
                    .background(.thickMaterial)
            }
        }
        .msConfigInspector {
            Picker("Shape", selection: $selectedClipShape) {
                ForEach(ClipShape.allCases, id: \.self) { shape in
                    Text(shape.name)
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSClipShapePage()
    }
}
