//
//  MSPersistentSystemOverlaysPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSPersistentSystemOverlaysPage: View {
    var body: some View {
        MSDisplayContainer {
            Text("Maximum immersion")
                .persistentSystemOverlays(.hidden)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSPersistentSystemOverlaysPage()
    }
}
