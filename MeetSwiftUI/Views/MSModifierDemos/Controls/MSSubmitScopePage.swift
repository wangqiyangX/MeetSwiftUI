//
//  MSSubmitScopePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

struct MSSubmitScopePage: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var tags = ""
    @State private var submitCount = 0

    var body: some View {
        MSDisplayContainer {
            Form {
                Section {
                    TextField("Username", text: $userName)
                    SecureField("Password", text: $password)

                    TextField("Tags", text: $tags)
                        .submitScope()
                } footer: {
                    Text("Submit count: \(submitCount)")
                }
            }
            .onSubmit {
                submitCount += 1
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSubmitScopePage()
    }
}
