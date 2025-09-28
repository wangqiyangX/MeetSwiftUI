//
//  MSSymbolsView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/15.
//

import SwiftUI

enum MSFontWeight: CaseIterable {
    case ultraLight
    case thin
    case light
    case regular
    case medium
    case semibold
    case bold
    case heavy
    case black

    var name: String {
        switch self {
        case .ultraLight:
            "Ultralight"
        case .thin:
            "Thin"
        case .light:
            "Light"
        case .regular:
            "Regular"
        case .medium:
            "Medium"
        case .semibold:
            "Semibold"
        case .bold:
            "Bold"
        case .heavy:
            "Heavy"
        case .black:
            "Black"
        }
    }

    var weight: Font.Weight {
        switch self {
        case .ultraLight:
            .ultraLight
        case .thin:
            .thin
        case .light:
            .light
        case .regular:
            .regular
        case .medium:
            .medium
        case .semibold:
            .semibold
        case .bold:
            .bold
        case .heavy:
            .heavy
        case .black:
            .black
        }
    }
}

enum MSLayout: CaseIterable {
    case grid
    case list
    case gallery

    var name: String {
        switch self {
        case .grid:
            "Grid"
        case .list:
            "List"
        case .gallery:
            "Gallery"
        }
    }

    var symbol: String {
        switch self {
        case .grid:
            "square.grid.2x2"
        case .list:
            "list.dash"
        case .gallery:
            "rectangle.grid.3x1"
        }
    }
}

struct MSSymbolsView: View {
    @State private var selectedSymbolsCategory: MSSymbols = .whatsNew
    @State private var selectedFontWeight: MSFontWeight = .regular
    @State private var selectedLayout: MSLayout = .grid
    @State private var selectedSymbol: String?
    @State private var searchText: String = ""

    @Environment(MSConfig.self) private var config

    var toolbarPlacement: ToolbarItemPlacement {
        #if os(watchOS)
            .automatic
        #else
            .primaryAction
        #endif
    }

    var filteredSymbols: [String] {
        if !searchText.isEmpty {
            return selectedSymbolsCategory.symbols.filter { symbol in
                symbol.localizedStandardContains(searchText)
            }
        }
        return selectedSymbolsCategory.symbols
    }

    var body: some View {
        @Bindable var config = config

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
                        ForEach(selectedSymbolsCategory.symbols, id: \.self) {
                            symbol in
                            Image(systemName: symbol)
                                .font(.system(size: 32))
                                .frame(width: 80, height: 80)
                                .background {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.thickMaterial)
                                        .overlay {
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(.clear)
                                                .if(
                                                    config.selectedSymbol
                                                        == symbol
                                                ) {
                                                    view in
                                                    view
                                                        .stroke(
                                                            Color.accentColor,
                                                            lineWidth: 2
                                                        )
                                                }
                                        }
                                }
                                .onTapGesture {
                                    config.selectedSymbol = symbol
                                }
                        }
                    }
                }
                .contentMargins(20, for: .scrollContent)
                .navigationDestination(item: $config.selectedSymbol) { symbol in
                    MSSymbolDetailsView(symbol: symbol)
                        .navigationTitle(symbol)
                }
            case .list:
                List(selection: $config.selectedSymbol) {
                    ForEach(selectedSymbolsCategory.symbols, id: \.self) {
                        symbol in
                        NavigationLink {
                            MSSymbolDetailsView(symbol: symbol)
                        } label: {
                            Label(symbol, systemImage: symbol)
                        }
                        .lineLimit(1)
                    }
                }
            case .gallery:
                Text("Gallery")
            }
        }
        .navigationTitle("SF Symbols")
        .toolbar {
            ToolbarItemGroup(placement: toolbarPlacement) {
                Picker("Weight", selection: $selectedFontWeight) {
                    ForEach(MSFontWeight.allCases, id: \.self) { weight in
                        Text(weight.name)
                    }
                }
                Picker("Layout", selection: $selectedLayout) {
                    ForEach(MSLayout.allCases, id: \.self) { layout in
                        Label(layout.name, systemImage: layout.symbol)
                    }
                }
                #if os(macOS)
                    .pickerStyle(.segmented)
                #endif
                Picker(
                    "Select Category",
                    selection: $selectedSymbolsCategory
                ) {
                    ForEach(MSSymbols.allCases, id: \.self) { symbol in
                        Text(symbol.name)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        MSSymbolsView()
            .frame(width: 600)
    }
}
