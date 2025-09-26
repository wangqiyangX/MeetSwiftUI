//
//  MSBlendModePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

struct MSBlendModePage: View {
    @State private var selectedMode: BlendMode = .normal

    var body: some View {
        MSDisplayContainer {
            HStack {
                Color.yellow.frame(width: 50, height: 50, alignment: .center)

                Color.red.frame(width: 50, height: 50, alignment: .center)
                    .rotationEffect(.degrees(45))
                    .padding(-20)
                    .blendMode(selectedMode)
            }
        }
        .msConfigInspector {
            Picker("Mode", selection: $selectedMode) {
                ForEach(BlendMode.allCases, id: \.self) { mode in
                    Text(mode.description).tag(mode)
                }
            }
        }
    }
}

extension BlendMode: @retroactive CustomStringConvertible {
    public var description: String {
        switch self {
        case .normal:
            return "normal"
        case .multiply:
            return "multiply"
        case .screen:
            return "screen"
        case .overlay:
            return "overlay"
        case .darken:
            return "darken"
        case .lighten:
            return "lighten"
        case .colorDodge:
            return "colorDodge"
        case .colorBurn:
            return "colorBurn"
        case .softLight:
            return "softLight"
        case .hardLight:
            return "hardLight"
        case .difference:
            return "difference"
        case .exclusion:
            return "exclusion"
        case .hue:
            return "hue"
        case .saturation:
            return "saturation"
        case .color:
            return "color"
        case .luminosity:
            return "luminosity"
        case .sourceAtop:
            return "sourceAtop"
        case .destinationOver:
            return "destinationOver"
        case .destinationOut:
            return "destinationOut"
        case .plusDarker:
            return "plusDarker"
        case .plusLighter:
            return "plusLighter"
        @unknown default:
            return "unknown"
        }
    }

    static var allCases: [BlendMode] = [
        .normal, .multiply, .screen, .overlay, .darken, .lighten,
        .colorDodge, .colorBurn, .softLight, .hardLight, .difference,
        .exclusion, .hue, .saturation, .color, .luminosity, .sourceAtop,
        .destinationOver, .destinationOut, .plusDarker, .plusLighter,
    ]
}

#Preview {
    MSPreviewContainer {
        MSBlendModePage()
    }
}
