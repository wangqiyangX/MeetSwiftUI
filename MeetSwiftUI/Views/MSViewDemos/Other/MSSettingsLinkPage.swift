//
//  MSSettingsLinkPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

#if os(macOS)
    import SwiftUI

    struct MSSettingsLinkPage: View {
        var body: some View {
            MSDisplayContainer {
                SettingsLink()
            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSSettingsLinkPage()
        }
    }
#endif
