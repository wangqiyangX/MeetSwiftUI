//
//  MSTextFieldPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSTextFieldPage: View {
    @State private var fieldContent: String = ""

    var body: some View {
        MSDisplayContainer {
            TextField("Field", text: $fieldContent)
        }
        .msConfigInspector(.list) {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSTextFieldPage()
    }
}
