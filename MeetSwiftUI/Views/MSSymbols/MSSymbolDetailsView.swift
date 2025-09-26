//
//  MSSymbolDetailsView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/25.
//

import SwiftUI

enum MSSymbolRenderingMode: CaseIterable {
    case automatic
    case hierarchical
    case monochrome
    case multicolor
    case palette

    var name: String {
        switch self {
        case .automatic:
            "Automatic"
        case .hierarchical:
            "Hierarchical"
        case .monochrome:
            "Monochrome"
        case .multicolor:
            "Multicolor"
        case .palette:
            "Palette"
        }
    }

    var mode: SymbolRenderingMode? {
        switch self {
        case .automatic:
            nil
        case .hierarchical:
            .hierarchical
        case .monochrome:
            .monochrome
        case .multicolor:
            .multicolor
        case .palette:
            .palette
        }
    }
}

enum MSSymbolVariableValueMode: CaseIterable {
    case `default`
    case color
    case draw

    var name: String {
        switch self {
        case .default:
            "Default"
        case .color:
            "Color"
        case .draw:
            "Draw"
        }
    }

    var mode: SymbolVariableValueMode? {
        switch self {
        case .default:
            nil
        case .color:
            .color
        case .draw:
            .draw
        }
    }
}

struct MSSymbolDetailsView: View {
    let symbol: String

    @State private var selectedRenderingMode: MSSymbolRenderingMode = .automatic
    @State private var selectedColor = Color.primary
    @State private var selectedOpacity: Double = 1.0
    @State private var selectedVariableValue: Double = 1.0
    @State private var selectedVariableValueMode: MSSymbolVariableValueMode =
        .default

    var body: some View {
        MSDisplayContainer {
            Image(systemName: symbol, variableValue: selectedVariableValue)
                .font(.system(size: 64))
                .frame(maxWidth: .infinity, alignment: .center)
                .symbolRenderingMode(
                    selectedRenderingMode.mode
                )
                .symbolVariableValueMode(selectedVariableValueMode.mode)
                .foregroundStyle(selectedColor)
                .opacity(selectedOpacity)

        }
        .navigationTitle(symbol)
        #if !os(macOS)
            .navigationBarTitleDisplayMode(.inline)
        #endif
        .msConfigInspector {
            Picker("Rendering Mode", selection: $selectedRenderingMode) {
                ForEach(MSSymbolRenderingMode.allCases, id: \.self) { mode in
                    Text(mode.name)
                }
            }
            #if !os(watchOS)
            ColorPicker("Color", selection: $selectedColor)
            #endif
            Slider(value: $selectedOpacity) {
                Text("Opacity")
            }
            Picker("Variable Value Mode", selection: $selectedVariableValueMode)
            {
                ForEach(MSSymbolVariableValueMode.allCases, id: \.self) {
                    mode in
                    Text(mode.name)
                }
            }
            if selectedVariableValueMode == .draw {
                Slider(value: $selectedVariableValue) {
                    Text("Variable Value")
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSymbolDetailsView(
            symbol: "square.and.arrow.up.circle"
        )
    }
}
