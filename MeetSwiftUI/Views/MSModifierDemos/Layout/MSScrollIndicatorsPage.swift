//
//  MSScrollIndicatorsPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

enum MSScrollIndicatorVisibility: CaseIterable {
    case automatic
    case hidden
    case never
    case visible

    var name: String {
        switch self {
        case .automatic:
            "Automatic"
        case .hidden:
            "Hidden"
        case .never:
            "Never"
        case .visible:
            "Visible"
        }
    }

    var visibility: ScrollIndicatorVisibility {
        switch self {
        case .automatic:
            .automatic
        case .hidden:
            .hidden
        case .never:
            .never
        case .visible:
            .visible
        }
    }
}

struct MSScrollIndicatorsPage: View {
    @State private var selectedScrollIndicatorVisibility:
        MSScrollIndicatorVisibility = .automatic

    var body: some View {
        MSDisplayContainer {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<100) {
                        Text("Row \($0)")
                            .frame(width: 100)
                    }
                }
            }
            .scrollIndicators(selectedScrollIndicatorVisibility.visibility)
        }
        .msConfigInspector {
            Picker("Visibility", selection: $selectedScrollIndicatorVisibility)
            {
                ForEach(MSScrollIndicatorVisibility.allCases, id: \.self) {
                    visibility in
                    Text(visibility.name)
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSScrollIndicatorsPage()
    }
}
