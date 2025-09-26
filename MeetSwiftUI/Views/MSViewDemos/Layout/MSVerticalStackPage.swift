//
//  MSVerticalStackPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSVerticalStackPage: View {
    var body: some View {
        MSDisplayContainer {
            VStack(
                alignment: .leading,
                spacing: 10
            ) {
                ForEach(
                    1...10,
                    id: \.self
                ) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSVerticalStackPage()
    }
}
