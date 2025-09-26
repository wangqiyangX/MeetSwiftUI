//
//  MSButtonBorderShapePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

enum BuiltinButtonBorderShape: CaseIterable {
    case automatic
    case capsule
    case circle
    case roundedRectangle

    var description: String {
        switch self {
        case .automatic:
            return "Automatic"
        case .capsule:
            return "Capsule"
        case .circle:
            return "Circle"
        case .roundedRectangle:
            return "RoundedRectangle"
        }
    }

    @ViewBuilder
    func applyButtonBorderShape<Label: View>(
        _ radius: Double,
        @ViewBuilder content: @escaping () -> Button<Label>
    ) -> some View {
        switch self {
        case .automatic:
            content().buttonBorderShape(.automatic)
        case .capsule:
            content().buttonBorderShape(.capsule)
        case .circle:
            content().buttonBorderShape(.circle)
        case .roundedRectangle:
            content().buttonBorderShape(.roundedRectangle(radius: radius))
        }
    }
}

struct MSButtonBorderShapePage: View {
    @State private var selectedShape: BuiltinButtonBorderShape = .roundedRectangle
    @State private var radius: Double = 10.0

    var body: some View {
        MSDisplayContainer {
            selectedShape.applyButtonBorderShape(radius) {
                Button {

                } label: {
                    Label("Download", systemImage: "square.and.arrow.down")
                }
            }
        }
        .msConfigInspector {
            Picker("Shape", selection: $selectedShape) {
                ForEach(BuiltinButtonBorderShape.allCases, id: \.self) {
                    shape in
                    Text(shape.description)
                }
            }
            if selectedShape == .roundedRectangle {
                Slider(value: $radius, in: 0.0...20.0) {
                    Text("Radius")
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSButtonBorderShapePage()
    }
}
