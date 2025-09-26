//
//  MSListPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSListPage: View {
    var body: some View {
        MSDisplayContainer {
            List {
                Text("List Item")
            }
        }
        .msConfigInspector(.vStack) {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSListPage()
    }
}
