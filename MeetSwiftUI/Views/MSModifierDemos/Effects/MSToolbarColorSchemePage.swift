//
//  MSToolbarColorSchemePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/19.
//

import SwiftUI

struct MSToolbarColorSchemePage: View {
    var body: some View {
        MSDisplayContainer {
            VStack {
                Text("`.toolbarColorScheme(.dark, for: .windowToolbar)`")
            }
            .toolbarColorScheme(.dark, for: .automatic)
        }
        .msConfigInspector {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSToolbarColorSchemePage()
    }
}
