//
//  MSIgnoresSafeAreaPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/23.
//

import SwiftUI

enum MSEdgeSet: CaseIterable {
    case all
    case top
    case bottom
    case leading
    case trailing
    case horizontal
    case vertical

    var displayName: String {
        switch self {
        case .all:
            "All"
        case .top:
            "Top"
        case .bottom:
            "Bottom"
        case .leading:
            "Leading"
        case .trailing:
            "Trailing"
        case .horizontal:
            "Horizontal"
        case .vertical:
            "Vertical"
        }
    }

    var edge: Edge.Set {
        switch self {
        case .all:
            .all
        case .top:
            .top
        case .bottom:
            .bottom
        case .leading:
            .leading
        case .trailing:
            .trailing
        case .horizontal:
            .horizontal
        case .vertical:
            .vertical
        }
    }
}

enum MSSafeAreaRegions: CaseIterable {
    case all
    case contaienr
    case keyboard

    var displayName: String {
        switch self {
        case .all:
            "All"
        case .contaienr:
            "Container"
        case .keyboard:
            "Keyboard"
        }
    }

    var regions: SafeAreaRegions {
        switch self {
        case .all:
            .all
        case .contaienr:
            .container
        case .keyboard:
            .keyboard
        }
    }
}

struct MSIgnoresSafeAreaPage: View {
    @State private var selectedRegions: MSSafeAreaRegions = .all
    @State private var selectedEdgeSet: MSEdgeSet = .all

    var body: some View {
        MSDisplayContainer {
            Color.blue
                .ignoresSafeArea(
                    selectedRegions.regions,
                    edges: selectedEdgeSet.edge
                )
        }
        .msConfigInspector {
            Picker("Regions", selection: $selectedRegions) {
                ForEach(MSSafeAreaRegions.allCases, id: \.self) { regions in
                    Text(regions.displayName)
                }
            }
            Picker("Edge", selection: $selectedEdgeSet) {
                ForEach(MSEdgeSet.allCases, id: \.self) { edge in
                    Text(edge.displayName)
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSIgnoresSafeAreaPage()
    }
}
