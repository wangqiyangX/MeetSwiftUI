//
//  MSRotation3DEffectPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/18.
//

import SwiftUI

enum Axis3D: String, CaseIterable, Identifiable {
    case x, y, z
    var id: String { rawValue }

    var axisVector: (x: CGFloat, y: CGFloat, z: CGFloat) {
        switch self {
        case .x: return (1, 0, 0)
        case .y: return (0, 1, 0)
        case .z: return (0, 0, 1)
        }
    }
}

struct MSRotation3DEffectPage: View {
    @State private var angle: Double = 0
    @State private var anchor: MSAnchorPoint = .center
    @State private var anchorZ: Double = 0
    @State private var perspectiveValue: Double = 1
    @State private var selectedAxis: Axis3D = .x

    var body: some View {
        MSDisplayContainer {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 140, height: 140)
                .rotation3DEffect(
                    .degrees(angle),
                    axis: selectedAxis.axisVector,
                    anchor: anchor.unitPoint,
                    anchorZ: anchorZ,
                    perspective: perspectiveValue
                )
                .animation(.easeInOut, value: angle)
                .animation(.easeInOut, value: perspectiveValue)
                .animation(.easeInOut, value: selectedAxis)
        }
        .msConfigInspector {
            Slider(value: $angle, in: 0...360) {
                Text("Degrees")
            }
            Picker("Axis", selection: $selectedAxis) {
                Text("X").tag(Axis3D.x)
                Text("Y").tag(Axis3D.y)
                Text("Z").tag(Axis3D.z)
            }
            Picker("Anchor", selection: $anchor) {
                ForEach(MSAnchorPoint.allCases, id: \.self) { anchor in
                    Text(anchor.displayName)
                        .id(anchor)
                }
            }
            Slider(value: $anchorZ, in: 0...1, step: 0.1) {
                Text("Anchor Z")
            }
            Slider(value: $perspectiveValue, in: 0...1, step: 0.1) {
                Text("Perspective")
            }
        }
    }
}

enum MSAnchorPoint: Hashable {
    case top
    case center
    case bottom
    case leading
    case trailing
    case topLeading
    case topTrailing
    case bottomLeading
    case bottomTrailing
    case custom(x: Double, y: Double)

    var unitPoint: UnitPoint {
        switch self {
        case .top: return .top
        case .center: return .center
        case .bottom: return .bottom
        case .leading: return .leading
        case .trailing: return .trailing
        case .topLeading: return .topLeading
        case .topTrailing: return .topTrailing
        case .bottomLeading: return .bottomLeading
        case .bottomTrailing: return .bottomTrailing
        case .custom(let x, let y): return UnitPoint(x: x, y: y)
        }
    }

    var displayName: String {
        switch self {
        case .top: return "Top"
        case .center: return "Center"
        case .bottom: return "Bottom"
        case .leading: return "Leading"
        case .trailing: return "Trailing"
        case .topLeading: return "Top Leading"
        case .topTrailing: return "Top Trailing"
        case .bottomLeading: return "Bottom Leading"
        case .bottomTrailing: return "Bottom Trailing"
        case .custom: return "Custom"
        }
    }

    var symbol: String {
        switch self {
        case .top:
            "square.grid.3x3.topmiddle.filled"
        case .center:
            "square.grid.3x3.middle.fill"
        case .bottom:
            "square.grid.3x3.bottommiddle.filled"
        case .leading:
            "square.grid.3x3.middleleft.filled"
        case .trailing:
            "square.grid.3x3.middleright.filled"
        case .topLeading:
            "square.grid.3x3.topleft.filled"
        case .topTrailing:
            "square.grid.3x3.topright.filled"
        case .bottomLeading:
            "square.grid.3x3.bottomleft.filled"
        case .bottomTrailing:
            "square.grid.3x3.bottomright.filled"
        case .custom:
            "square.grid.3x3.fill"
        }
    }

    static var allCases: [MSAnchorPoint] {
        [
            .top,
            .center,
            .bottom,
            .leading,
            .trailing,
            .topLeading,
            .topTrailing,
            .bottomLeading,
            .bottomTrailing,
            .custom(x: 0.5, y: 0.5),
        ]
    }

    mutating func updateValues(_ x: Double, _ y: Double) {
        self = .custom(x: x, y: y)
    }
}

#Preview {
    MSPreviewContainer {
        MSRotation3DEffectPage()
    }
}
