//
//  MSToolbarRolePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

enum MSToolbarRole: CaseIterable {
    case automatic
    case browser
    case editor
    case navigationStack

    var name: String {
        switch self {
        case .automatic:
            "Automatic"
        case .browser:
            "Browser"
        case .editor:
            "Editor"
        case .navigationStack:
            "NavigationStack"
        }
    }

    var role: ToolbarRole {
        switch self {
        case .automatic:
            .automatic
        case .browser:
            #if os(watchOS)
                .automatic
            #else
                .browser
            #endif
        case .editor:
            #if os(watchOS)
                .automatic
            #else
                .editor
            #endif
        case .navigationStack:
            .navigationStack
        }
    }
}

struct MSToolbarRolePage: View {
    @State private var selectedToolbarRole: MSToolbarRole = .automatic

    var body: some View {
        MSDisplayContainer {
            List {

            }
            .navigationTitle(selectedToolbarRole.name)
            .toolbarRole(selectedToolbarRole.role)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Edit") {

                    }
                }
            }
        }
        .msConfigInspector {
            Picker("Toolbar Role", selection: $selectedToolbarRole) {
                ForEach(MSToolbarRole.allCases, id: \.self) { role in
                    Text(role.name)
                        #if os(watchOS)
                            .disabled(role == .browser || role == .editor)
                        #endif
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSToolbarRolePage()
    }
}
