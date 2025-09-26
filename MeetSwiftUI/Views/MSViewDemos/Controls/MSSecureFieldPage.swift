//
//  MSSecureFieldPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSSecureFieldPage: View {
    @State private var password = ""

    var body: some View {
        MSDisplayContainer {
            SecureField("Password", text: $password)
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSecureFieldPage()
    }
}
