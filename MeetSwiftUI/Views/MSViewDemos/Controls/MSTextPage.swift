//
//  MSTextPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSTextPage: View {
    var body: some View {
        MSDisplayContainer {
            Text("Something")
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSTextPage()
    }
}
