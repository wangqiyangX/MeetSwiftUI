//
//  MSProgressViewPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSProgressViewPage: View {
    var body: some View {
        MSDisplayContainer {
            ProgressView("Loading...")
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSProgressViewPage()
    }
}
