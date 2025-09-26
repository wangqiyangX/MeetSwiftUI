//
//  MSBackgroundPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/22.
//

import SwiftUI

enum MSAlignment: CaseIterable {
    case top
    case bottom
    case leading
    case trailing
    case center
    case topLeading
    case topTrailing
    case bottomLeading
    case bottomTrailing

    var alignment: Alignment {
        switch self {
        case .top: return .top
        case .bottom: return .bottom
        case .leading: return .leading
        case .trailing: return .trailing
        case .center: return .center
        case .topLeading: return .topLeading
        case .topTrailing: return .topTrailing
        case .bottomLeading: return .bottomLeading
        case .bottomTrailing: return .bottomTrailing
        }
    }

    var displayName: String {
        switch self {
        case .top: return "Top"
        case .bottom: return "Bottom"
        case .leading: return "Leading"
        case .trailing: return "Trailing"
        case .center: return "Center"
        case .topLeading: return "Top Leading"
        case .topTrailing: return "Top Trailing"
        case .bottomLeading: return "Bottom Leading"
        case .bottomTrailing: return "Bottom Trailing"
        }
    }

    var symbol: String {
        switch self {
        case .top: return "arrow.up"
        case .bottom: return "arrow.down"
        case .leading: return "arrow.left"
        case .trailing: return "arrow.right"
        case .center: return "circle"
        case .topLeading: return "arrow.up.left"
        case .topTrailing: return "arrow.up.right"
        case .bottomLeading: return "arrow.down.left"
        case .bottomTrailing: return "arrow.down.right"
        }
    }
}

struct MSBackgroundPage: View {
    @State private var selectedAlignment: MSAlignment = .center

    var body: some View {
        MSDisplayContainer {
            RoundedRectangle(cornerRadius: 8)
                .fill(.red)
                .frame(width: 50, height: 50)
                .overlay {
                    Text("Main")
                }
                .background(alignment: selectedAlignment.alignment) {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.green)
                        .frame(width: 140, height: 140)
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                }
        }
        .msConfigInspector {
            Picker("Alignment", selection: $selectedAlignment.animation()) {
                ForEach(MSAlignment.allCases, id: \.self) { align in
                    Text(align.displayName)
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSBackgroundPage()
    }
}
