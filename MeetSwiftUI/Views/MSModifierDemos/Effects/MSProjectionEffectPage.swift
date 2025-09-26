//
//  MSProjectionEffectPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/18.
//

#if !os(watchOS)
    import SwiftUI

    struct MSProjectionEffectPage: View {
        let transform = CATransform3DMakeRotation(
            -30 * (.pi / 180),
            0.0,
            0.0,
            1.0
        )

        var body: some View {
            MSDisplayContainer {
                Text("Projection effects using transforms")
                    .projectionEffect(.init(transform))
                    .border(Color.gray)
            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSProjectionEffectPage()
        }
    }
#endif
