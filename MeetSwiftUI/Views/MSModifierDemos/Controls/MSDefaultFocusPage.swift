//
//  MSDefaultFocusPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSDefaultFocusPage: View {
    enum FocusableField: Hashable {
        case email
        case password
    }

    @FocusState private var focus: FocusableField?

    @State private var email: String = ""
    @State private var password: String = ""
    @State private var defaultFocus: FocusableField = .email

    var body: some View {
        MSDisplayContainer {
            TextField("Email", text: $email)
                .focused($focus, equals: .email)
            SecureField("Password", text: $password)
                .focused($focus, equals: .password)

        }
        .defaultFocus($focus, defaultFocus)
        .msConfigInspector(.list) {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSDefaultFocusPage()
    }
}
