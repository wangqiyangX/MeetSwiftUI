//
//  MSColors.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

enum MSColors: CaseIterable, Identifiable {
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

    var id: Self { self }

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

extension MSColors {
    static let systemColors: [MSColors] = [
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .cyan,
        .blue,
        .indigo,
        .purple,
        .pink,
        .brown,
    ]
}
