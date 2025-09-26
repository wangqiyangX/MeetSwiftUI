//
//  MSFocusedPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSFocusedPage: View {
    @FocusState private var isEmailFocused: Bool
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        MSDisplayContainer {
            TextField("email", text: $email, prompt: Text("email"))
                .focused($isEmailFocused)
        }
        .msConfigInspector(.list) {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSFocusedPage()
    }
}
