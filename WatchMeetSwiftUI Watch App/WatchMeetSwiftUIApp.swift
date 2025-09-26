//
//  WatchMeetSwiftUIApp.swift
//  WatchMeetSwiftUI Watch App
//
//  Created by wangqiyang on 2025/9/23.
//

import SwiftUI

@main
struct WatchMeetSwiftUIApp: App {
    @State private var config = MSConfig()

    var body: some Scene {
        WindowGroup {
            WatchMSMainView()
                .environment(config)
        }
    }
}
