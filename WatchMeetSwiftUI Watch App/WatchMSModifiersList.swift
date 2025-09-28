//
//  WatchMSModifiersListView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/23.
//

import SwiftUI

struct WatchMSModifiersList: View {
    @ViewBuilder
    func MSNavigationLink(_ modifier: MSModifier) -> some View {
        NavigationLink {
            modifier.detailView()
        } label: {
            Text(modifier.name)
        }
    }
    var body: some View {
        List {
            Section("Controls") {
                ForEach(MSModifier.controls) { modifier in
                    MSNavigationLink(modifier)
                }
            }
            Section("Effects") {
                ForEach(MSModifier.effects) { modifier in
                    MSNavigationLink(modifier)
                }
            }
            Section("Layout") {
                ForEach(MSModifier.layout) { modifier in
                    MSNavigationLink(modifier)
                }
            }
        }
        .navigationTitle("Modifiers")
    }
}

#Preview {
    MSPreviewContainer {
        WatchMSModifiersList()
    }
}
