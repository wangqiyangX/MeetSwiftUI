//
//  MeetSwiftUIApp.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

@main
struct MeetSwiftUIApp: App {
    @State private var config = MSConfig()

    var body: some Scene {
        WindowGroup {
            Group {
                #if os(iOS)
                    MeetSwiftUITabView()
                #else
                    MeetSwiftUISplitView()
                #endif
            }
            .environment(config)
        }
    }
}
