//
//  MSHorizontalStackPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSHorizontalStackPage: View {
    var body: some View {
        MSDisplayContainer {
            HStack(
                alignment: .top,
                spacing: 10
            ) {
                ForEach(
                    1...5,
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
        MSHorizontalStackPage()
    }
}
