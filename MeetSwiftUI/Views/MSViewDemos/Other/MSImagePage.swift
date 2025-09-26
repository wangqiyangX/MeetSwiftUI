//
//  MSImagePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSImagePage: View {
    var body: some View {
        MSDisplayContainer {
            Image(systemName: "apple.logo")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSImagePage()
    }
}
