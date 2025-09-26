//
//  MSModifierListView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/15.
//

import SwiftUI

struct MSModifierListView: View {
    @State private var ControlsSectionIsExpanded = true
    @State private var EffectsSectionIsExpanded = true
    @State private var LayoutSectionIsExpanded = true
    @State private var OtherSectionIsExpanded = true

    @Environment(MSConfig.self) private var config

    @ViewBuilder
    func sections() -> some View {
        Section("Controls", isExpanded: $ControlsSectionIsExpanded) {
            ForEach(MSModifiers.controls) { modifier in
                NavigationLink(value: modifier) {
                    Text(modifier.name)
                }
            }
        }
        Section("Effects", isExpanded: $EffectsSectionIsExpanded) {
            ForEach(MSModifiers.effects) { modifier in
                NavigationLink(value: modifier) {
                    Text(modifier.name)
                }
            }
        }
        Section("Layout", isExpanded: $LayoutSectionIsExpanded) {
            ForEach(MSModifiers.layout) { modifier in
                NavigationLink(value: modifier) {
                    Text(modifier.name)
                }
            }
        }
        //        Section("Other", isExpanded: $OtherSectionIsExpanded) {
        //            ForEach(MSViews.other) { view in
        //                NavigationLink(value: view) {
        //                    Text(view.name)
        //                }
        //            }
        //        }
    }

    var body: some View {
        @Bindable var config = config

        Group {
            #if os(iOS) || os(watchOS)
                List {
                    sections()
                }
            #else
                List(selection: $config.selectedMSModifiers) {
                    sections()
                }
            #endif
        }
        .navigationTitle("Modifiers")
    }
}

#Preview {
    MSModifierListView()
}
