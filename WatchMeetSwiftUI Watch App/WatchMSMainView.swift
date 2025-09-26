//
//  WatchMSMainView.swift
//  WatchMeetSwiftUI Watch App
//
//  Created by wangqiyang on 2025/9/23.
//

import SwiftUI

struct WatchMSMainView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            List {
                ForEach(NavigationOptions.allCases) { option in
                    NavigationLink {
                        switch option {
                        case .views:
                            WatchMSViewsList()
                        case .modifiers:
                            WatchMSModifiersList()
                        case .symbols:
                            Text("Coming soon")
                        case .colors:
                            Text("Coming soon")
                        case .search:
                            Text("Search")
                        }
                    } label: {
                        Label(option.name, systemImage: option.symbolName)
                    }
                }
            }
            .navigationTitle("Meet SwiftUI")
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    MSPreviewContainer {
        WatchMSMainView()
    }
}
