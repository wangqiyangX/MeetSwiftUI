//
//  MSFormPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSFormPage: View {

    var body: some View {
        MSDisplayContainer {
            Form {
                Text("Form")
            }
        }
        .msConfigInspector(.vStack) {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSFormPage()
    }
}
