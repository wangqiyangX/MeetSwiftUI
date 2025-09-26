//
//  MSCompositingGroupPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/17.
//

import SwiftUI

struct MSCompositingGroupPage: View {
    @State private var useCompositingGroup = false

    let code: String =
        """
        VStack {
            ZStack {
                Text("CompositingGroup")
                    .foregroundColor(.black)
                    .padding(20)
                    .background(Color.red)
                Text("CompositingGroup")
                    .blur(radius: 2)
            }
            .font(.largeTitle)
            .compositingGroup()
            .opacity(0.5)
        }
        """

    var body: some View {
        MSDisplayContainer {
            VStack {
                ZStack {
                    Text("CompositingGroup")
                        .foregroundColor(.black)
                        .padding(20)
                        .background(Color.red)
                    Text("CompositingGroup")
                        .blur(radius: 2)
                }
                .font(.largeTitle)
                .if(
                    useCompositingGroup,
                    transform: { view in
                        view
                            .compositingGroup()
                    }
                )
                .opacity(0.5)
            }
        }
        .msConfigInspector(codeString: code) {
            Toggle("Use `.compositingGroup()`", isOn: $useCompositingGroup)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSCompositingGroupPage()
    }
}
