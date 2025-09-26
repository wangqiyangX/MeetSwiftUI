//
//  MSPreferredColorSchemePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/18.
//

import SwiftUI

enum MSColorScheme: CaseIterable {
    case light
    case dark
    case system

    var name: String {
        switch self {
        case .light:
            "Light"
        case .dark:
            "Dark"
        case .system:
            "System"
        }
    }

    var scheme: ColorScheme? {
        switch self {
        case .light:
            .light
        case .dark:
            .dark
        case .system:
            .none
        }
    }
}

struct MSPreferredColorSchemePage: View {
    @State private var selectedColorScheme: MSColorScheme = .light

    var body: some View {
        MSDisplayContainer {
            VStack {
                Text("Something")
            }
            .preferredColorScheme(selectedColorScheme.scheme)
        }
        .msConfigInspector {
            Picker("Scheme", selection: $selectedColorScheme) {
                ForEach(MSColorScheme.allCases, id: \.self) { scheme in
                    Text(scheme.name)
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSPreferredColorSchemePage()
    }
}
