//
//  MSLazyHorizontalStackPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSLazyHorizontalStackPage: View {
    var body: some View {
        MSDisplayContainer {
            ScrollView(.horizontal) {
                LazyHStack(alignment: .top, spacing: 10) {
                    ForEach(1...100, id: \.self) {
                        Text("Column \($0)")
                    }
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSLazyHorizontalStackPage()
    }
}
