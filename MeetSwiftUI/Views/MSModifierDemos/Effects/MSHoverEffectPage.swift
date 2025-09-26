//
//  MSHoverEffectPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/17.
//

#if os(iOS)
    import SwiftUI

    struct MSHoverEffectPage: View {
        var body: some View {
            MSDisplayContainer {
                Button("Play", systemImage: "play.fill") {

                }
                .labelStyle(.iconOnly)
                .hoverEffect(.highlight)
            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSHoverEffectPage()
        }
    }
#endif
