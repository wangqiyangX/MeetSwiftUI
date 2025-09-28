//
//  MSToolbarBackgroundPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSToolbarBackgroundPage: View {
    @State private var color: Color = .accentColor

    var body: some View {
        MSDisplayContainer {
            TabView {
                Tab {
                    Text("Home")
                } label: {
                    Label("Home", systemImage: "house")
                }
                Tab {
                    Text("Settings")
                } label: {
                    Label("Settings", systemImage: "gearshape")
                }
            }
            .navigationTitle("Title")
            .toolbarBackground(color, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        .msConfigInspector {
            #if !os(watchOS)
                ColorPicker("Color", selection: $color)
            #endif
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSToolbarBackgroundPage()
    }
}
