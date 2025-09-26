//
//  MSGroupPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSGroupPage: View {
    var body: some View {
        MSDisplayContainer {
            Group {
                Text("SwiftUI")
                Text("Combine")
                Text("Swift System")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSGroupPage()
    }
}
