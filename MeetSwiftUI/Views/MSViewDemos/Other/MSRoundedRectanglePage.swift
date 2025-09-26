//
//  MSRoundedRectanglePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSRoundedRectanglePage: View {
    var body: some View {
        MSDisplayContainer {
            RoundedRectangle(cornerRadius: 20)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSRoundedRectanglePage()
    }
}
