//
//  MSColorPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSColorPage: View {
    var body: some View {
        MSDisplayContainer {
            Color(red: 0.8, green: 0.2, blue: 0.1)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSColorPage()
    }
}
