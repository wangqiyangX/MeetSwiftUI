//
//  MSPaddingPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSPaddingPage: View {
    var body: some View {
        MSDisplayContainer {
            Color.red
                .padding(.horizontal, 20)
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSPaddingPage()
    }
}
