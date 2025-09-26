//
//  MSTogglePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSTogglePage: View {
    @State private var toggleValue: Bool = false

    var body: some View {
        MSDisplayContainer {
            Toggle("Toggle", isOn: $toggleValue)
        }
        .msConfigInspector(.form) {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSTogglePage()
    }
}
