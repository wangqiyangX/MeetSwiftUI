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

enum MSSymbolInspectorType: CaseIterable {
    case render
    case animate

    var symbol: String {
        switch self {
        case .render:
            "paintbrush"
        case .animate:
            "circle"
        }
    }
}

enum MSSymbolEffect: CaseIterable {
    case appear
    case drawOn
    case bounce
    case scale
    case wiggle
    case rotate
    case breathe
    case pulse
    case variableColor
    case replace
    case drawOff
    case disappear
}

enum MSNormalDirection {
    case up, down
}

enum MSAnimate {
    case wholeSymbol, byLayer, indivi
}

struct MSAppearSymbolEffect: ViewModifier {
    let animate: MSAnimate
    let normalDirection: MSNormalDirection
    let animateIndicator: Bool

    func body(content: Content) -> some View {
        content
            .if(animate == .byLayer) { view in
                view.symbolEffect(.bounce.byLayer, value: animateIndicator)
            }
            .if(animate == .wholeSymbol) { view in
                view.symbolEffect(.bounce.wholeSymbol, value: animateIndicator)
            }
    }
}

struct MSSymbolDetailsView: View {
    let symbol: String

    @State private var selectedInspectorType: MSSymbolInspectorType = .animate
    @State private var selectedRenderingMode: MSSymbolRenderingMode = .automatic
    @State private var selectedColor = Color.primary
    @State private var selectedPrimaryColor = Color.primary
    @State private var selectedSecondayColor = Color.accentColor
    @State private var selectedTertiaryColor = Color.clear
    @State private var selectedOpacity: Double = 1.0
    @State private var selectedVariableValue: Double = 1.0
    @State private var selectedVariableValueMode: MSSymbolVariableValueMode =
        .default
    @State private var useGradientColorRenderingMode = false
    @State private var playAnimation = false
    @State private var selectedEffect: MSSymbolEffect = .bounce

    var body: some View {
        MSDisplayContainer {
            Image(systemName: symbol, variableValue: selectedVariableValue)
                .font(.system(size: 64))
                .frame(maxWidth: .infinity, alignment: .center)
                .symbolRenderingMode(
                    selectedRenderingMode.mode
                )
                .symbolVariableValueMode(selectedVariableValueMode.mode)
                .if(
                    useGradientColorRenderingMode,
                    transform: { view in
                        view
                            .symbolColorRenderingMode(.gradient)
                    }
                )
                .if(
                    selectedRenderingMode == .palette,
                    transform: { view in
                        view
                            .foregroundStyle(
                                selectedPrimaryColor,
                                selectedSecondayColor,
                                selectedSecondayColor
                            )
                    }
                )
                .if(
                    selectedRenderingMode != .palette,
                    transform: { view in
                        view
                            .foregroundStyle(selectedPrimaryColor)
                    }
                )
                .opacity(selectedOpacity)
        }
        .navigationTitle(symbol)
        #if !os(macOS)
            .navigationBarTitleDisplayMode(.inline)
        #endif
        .msConfigInspector {
            if selectedInspectorType == .render {
                Picker("Rendering Mode", selection: $selectedRenderingMode) {
                    ForEach(MSSymbolRenderingMode.allCases, id: \.self) {
                        mode in
                        Text(mode.name)
                    }
                }
                Slider(value: $selectedOpacity) {
                    Text("Opacity")
                }
                Toggle("Gradient", isOn: $useGradientColorRenderingMode)
                #if !os(watchOS)
                    Section("Colors") {
                        ColorPicker("Privacy", selection: $selectedPrimaryColor)
                        if selectedRenderingMode == .palette {
                            ColorPicker(
                                "Seconday",
                                selection: $selectedSecondayColor
                            )
                            ColorPicker(
                                "Tertiary",
                                selection: $selectedTertiaryColor
                            )
                        }
                    }
                #endif
                Section("Variable") {
                    Picker("Mode", selection: $selectedVariableValueMode) {
                        ForEach(MSSymbolVariableValueMode.allCases, id: \.self)
                        {
                            mode in
                            Text(mode.name)
                        }
                    }
                    if selectedVariableValueMode == .draw {
                        Slider(value: $selectedVariableValue) {
                            Text("Value")
                        }
                    }
                }
            } else {

                Button {
                    playAnimation.toggle()
                } label: {
                    Label("Play", systemImage: "play")
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSymbolDetailsView(
            symbol: "arrow.up.folder.fill"
        )
    }
}
