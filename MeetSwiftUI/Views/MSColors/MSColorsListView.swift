//
//  MSColorsListView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/15.
//

import SwiftUI

enum MSSystemColors: CaseIterable {
    case red
    case orange
    case yellow
    case green
    case mint
    case teal
    case cyan
    case blue
    case indigo
    case purple
    case pink
    case brown

    var name: String {
        switch self {
        case .red:
            "Red"
        case .orange:
            "Orange"
        case .yellow:
            "Yellow"
        case .green:
            "Green"
        case .mint:
            "Mint"
        case .teal:
            "Teal"
        case .cyan:
            "Cyan"
        case .blue:
            "Blue"
        case .indigo:
            "Indigo"
        case .purple:
            "Purple"
        case .pink:
            "Pink"
        case .brown:
            "Brown"
        }
    }

    var color: Color {
        switch self {
        case .red:
            .red
        case .orange:
            .orange
        case .yellow:
            .yellow
        case .green:
            .green
        case .mint:
            .mint
        case .teal:
            .teal
        case .cyan:
            .cyan
        case .blue:
            .blue
        case .indigo:
            .indigo
        case .purple:
            .purple
        case .pink:
            .pink
        case .brown:
            .brown
        }
    }
}

struct MSColorsListView: View {
    @State private var selectedLayout: MSLayout = .grid
    @State private var selectedColor: MSSystemColors?

    var body: some View {
        Group {
            switch selectedLayout {
            case .grid:
                ScrollView {
                    LazyVGrid(
                        columns: [
                            GridItem(.adaptive(minimum: 80, maximum: 100))
                        ],
                        spacing: 20
                    ) {
                        ForEach(MSSystemColors.allCases, id: \.self) { color in
                            RoundedRectangle(cornerRadius: 20)
                                .fill(color.color)
                                .frame(height: 80)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.clear)
                                        .if(selectedColor == color) {
                                            view in
                                            view
                                                .stroke(
                                                    Color.accentColor,
                                                    lineWidth: 2
                                                )
                                        }
                                }
                                .onTapGesture {
                                    selectedColor = color
                                }
                        }
                    }
                }
                .contentMargins(20, for: .scrollContent)
                .navigationDestination(item: $selectedColor) { color in
                    color.color
                }
            case .list:
                List {
                    Section("System Colors") {
                        ForEach(MSSystemColors.allCases, id: \.self) { color in
                            NavigationLink(value: color.color) {
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
                .navigationDestination(for: Color.self) { color in
                    color
                }
            case .gallery:
                Text("Gallery")
            }
        }
        .navigationTitle("Colors")
        .toolbar {
            Picker("Layout", selection: $selectedLayout) {
                ForEach(MSLayout.allCases, id: \.self) { layout in
                    Label(layout.name, systemImage: layout.symbol)
                }
            }
            #if !os(watchOS)
                .pickerStyle(.segmented)
            #endif
        }
    }
}

#Preview {
    NavigationStack {
        MSColorsListView()
            .frame(width: 500)
    }
}
