//
//  MeetSwiftUISplitView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

#if !os(iOS)
    import SwiftUI

    struct MeetSwiftUISplitView: View {
        @Environment(MSConfig.self) private var config
        @State private var preferredColumn: NavigationSplitViewColumn = .detail

        var body: some View {
            @Bindable var config = config

            NavigationSplitView(preferredCompactColumn: $preferredColumn) {
                List(selection: $config.selectedTab) {
                    ForEach(NavigationOptions.tabs) { tab in
                        NavigationLink(value: tab) {
                            Label(tab.name, systemImage: tab.symbolName)
                        }
                    }
                }
                .navigationSplitViewColumnWidth(
                    min: 150,
                    ideal: 200,
                    max: 300
                )
//                .toolbar(removing: .sidebarToggle)
            } content: {
                config.selectedTab.listViewForPage()
                    .toolbar {
                        ToolbarItemGroup(placement: .navigation) {
                            Button {

                            } label: {
                                Label(
                                    "Backword",
                                    systemImage: "chevron.backward"
                                )
                            }
                            Button {

                            } label: {
                                Label("Forward", systemImage: "chevron.forward")
                            }
                        }
                    }
            } detail: {
                if let selectedMSViews = config.selectedMSViews {
                    selectedMSViews.detailView()
                }
                if let selectedMSModifiers = config.selectedMSModifiers {
                    selectedMSModifiers.detailView()
                }
            }
            .searchable(
                text: $config.searchString,
                placement: .sidebar,
                prompt: "Search",
            )
        }
    }

    #Preview {
        MeetSwiftUISplitView()
    }
#endif
