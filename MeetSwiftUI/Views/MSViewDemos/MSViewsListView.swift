//
//  MSViewsListView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSViewsListView: View {
    @State private var ControlsSectionIsExpanded = true
    @State private var LayoutSectionIsExpanded = true
    @State private var PaintSectionIsExpanded = true
    @State private var OtherSectionIsExpanded = true

    @Environment(MSConfig.self) private var config

    @ViewBuilder
    func sections() -> some View {
        Section("Controls", isExpanded: $ControlsSectionIsExpanded) {
            ForEach(MSViews.controls.sorted(by: { $0.name < $1.name })) { view in
                NavigationLink(value: view) {
                    Text(view.name)
                }
            }
        }
        Section("Layout", isExpanded: $LayoutSectionIsExpanded) {
            ForEach(MSViews.layout.sorted(by: { $0.name < $1.name })) { view in
                NavigationLink(value: view) {
                    Text(view.name)
                }
            }
        }
        Section("Paint", isExpanded: $PaintSectionIsExpanded) {
            ForEach(MSViews.paint.sorted(by: { $0.name < $1.name })) { view in
                NavigationLink(value: view) {
                    Text(view.name)
                }
            }
        }
        Section("Other", isExpanded: $OtherSectionIsExpanded) {
            ForEach(MSViews.other.sorted(by: { $0.name < $1.name })) { view in
                NavigationLink(value: view) {
                    Text(view.name)
                }
            }
        }
    }

    var body: some View {
        @Bindable var config = config

        Group {
            #if os(iOS) || os(watchOS)
                List {
                    sections()
                }
//                .listStyle(.sidebar)
            #else
                List(selection: $config.selectedMSViews) {
                    sections()
                }
            #endif
        }
        .navigationTitle("Views")
    }
}

#Preview {
    MSViewsListView()
        .environment(MSConfig())
}
