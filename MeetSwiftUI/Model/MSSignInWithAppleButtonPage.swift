//
//  MSSignInWithAppleButtonPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import AuthenticationServices
import SwiftUI

struct MSSignInWithAppleButtonPage: View {
    var body: some View {
        MSDisplayContainer {
            SignInWithAppleButton(
                onRequest: { request in

                },
                onCompletion: { result in

                }
            )
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSignInWithAppleButtonPage()
    }
}
