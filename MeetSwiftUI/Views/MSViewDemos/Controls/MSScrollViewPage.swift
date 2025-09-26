//
//  MSScrollViewPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSScrollViewPage: View {
    var body: some View {
        MSDisplayContainer {
            ScrollView {

            }
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSScrollViewPage()
    }
}
