//
//  MSColorsView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/15.
//

import SwiftUI

struct MSColorsView: View {
    @State private var selectedLayout: MSLayout = .list

    var toolbarPlacement: ToolbarItemPlacement {
        #if os(watchOS)
            .automatic
        #else
            .primaryAction
        #endif
    }

    var body: some View {
        Group {
            switch selectedLayout {
            case .grid:
                ColorGrid()
            case .list:
                ColorList()
            case .gallery:
                Text("Gallery")
            }
        }
        .navigationTitle("Colors")
        .toolbar {
            ToolbarItem(placement: toolbarPlacement) {
                Picker("Layout", selection: $selectedLayout) {
                    ForEach(MSLayout.allCases, id: \.self) { layout in
                        Label(layout.name, systemImage: layout.symbol)
                    }
                }
                #if os(macOS)
                    .pickerStyle(.segmented)
                #endif
            }
        }
    }
}

private struct ColorGrid: View {
    @Environment(MSConfig.self) private var config

    var body: some View {
        @Bindable var config = config

        ScrollView {
            LazyVGrid(
                columns: [
                    GridItem(.adaptive(minimum: 80, maximum: 100))
                ],
                spacing: 20
            ) {
                ForEach(MSColors.allCases, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(color.color)
                        .frame(height: 80)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.clear)
                                .if(config.selectedColor == color) {
                                    view in
                                    view
                                        .stroke(
                                            Color.accentColor,
                                            lineWidth: 2
                                        )
                                }
                        }
                        .onTapGesture {
                            config.selectedColor = color
                        }
                }
            }
        }
        .contentMargins(20, for: .scrollContent)
        .navigationDestination(item: $config.selectedColor) { color in
            color.color
        }
    }
}

private struct ColorList: View {
    @Environment(MSConfig.self) private var config

    var body: some View {
        @Bindable var config = config

        List(selection: $config.selectedColor) {
            Section("System Colors") {
                ForEach(MSColors.systemColors) { color in
                    NavigationLink {
                        color.color
                    } label: {
                        LabeledContent {
                            Circle()
                                .fill(color.color)
                                .frame(width: 12)
                        } label: {
                            Text(color.name)
                        }
                    }
                }
            }
        }
        #if !os(watchOS)
            .listStyle(.sidebar)
        #endif
    }
}

#Preview {
    NavigationStack {
        MSColorsView()
            .frame(width: 500)
    }
}
