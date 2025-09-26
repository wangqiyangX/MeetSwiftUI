//
//  MSLabelView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSLabelPage: View {
    var body: some View {
        MSDisplayContainer {
            Label {
                Text("Lightning")
            } icon: {
                Image(systemName: "bolt.fill")
            }
        }
        .msConfigInspector {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSLabelPage()
    }
}
