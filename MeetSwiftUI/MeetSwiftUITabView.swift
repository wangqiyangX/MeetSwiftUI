//
//  MeetSwiftUITabView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/15.
//

import SwiftUI

struct MeetSwiftUITabView: View {
    @State private var selectedTab: NavigationOptions = .views

    var body: some View {

        TabView(selection: $selectedTab) {
            Tab(
                NavigationOptions.views.name,
                systemImage: NavigationOptions.views.symbolName,
                value: .views
            ) {
                NavigationStack {
                    #if os(iOS) || os(watchOS)
                        NavigationOptions.views.listViewForPage()
                            .navigationDestination(for: MSViews.self) { view in
                                view.detailView()
                                    .navigationTitle(view.name)
                                    .navigationBarTitleDisplayMode(.inline)
                                    #if os(iOS)
                                        .toolbarVisibility(
                                            .hidden,
                                            for: .tabBar
                                        )
                                    #endif
                            }
                    #endif
                }
            }
            Tab(
                NavigationOptions.modifiers.name,
                systemImage: NavigationOptions.modifiers.symbolName,
                value: .modifiers
            ) {
                NavigationStack {
                    NavigationOptions.modifiers.listViewForPage()
                        #if os(iOS) || os(watchOS)
                            .navigationDestination(for: MSModifiers.self) {
                                view in
                                view.detailView()
                                .navigationTitle(view.name)
                                .navigationBarTitleDisplayMode(.inline)
                                    #if os(iOS)
                                        .toolbarVisibility(
                                            .hidden,
                                            for: .tabBar
                                        )
                                    #endif
                            }
                        #endif
                }
            }
            Tab(
                NavigationOptions.symbols.name,
                systemImage: NavigationOptions.symbols.symbolName,
                value: .symbols
            ) {
                NavigationStack {
                    NavigationOptions.symbols.listViewForPage()
                }
            }
            Tab(
                NavigationOptions.colors.name,
                systemImage: NavigationOptions.colors.symbolName,
                value: .colors
            ) {
                NavigationStack {
                    NavigationOptions.colors.listViewForPage()
                }
            }
            Tab(
                NavigationOptions.search.name,
                systemImage: NavigationOptions.search.symbolName,
                value: .search,
                role: .search
            ) {
                NavigationStack {
                    NavigationOptions.search.listViewForPage()
                }
            }
        }
    }
}

#Preview {
    MeetSwiftUITabView()
}
