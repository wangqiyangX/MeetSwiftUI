//
//  MSScrollContentBackgroundPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSScrollContentBackgroundPage: View {
    @State private var visibility: Visibility = .automatic

    var body: some View {
        MSDisplayContainer {
            List {
                Text("One")
                Text("Two")
                Text("Three")
            }
            .scrollContentBackground(visibility)
        }
        .msConfigInspector {
            Picker("Visibility", selection: $visibility) {
                ForEach(Visibility.allCases, id: \.self) { visibility in
                    Text(visibility.description)
                }
            }
        }
    }
}

extension Visibility: @retroactive CustomStringConvertible {
    public var description: String {
        switch self {
        case .automatic:
            "Automatic"
        case .visible:
            "Visible"
        case .hidden:
            "Hidden"
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSScrollContentBackgroundPage()
    }
}
