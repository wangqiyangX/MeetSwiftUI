//
//  MSLazyVerticalStackPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSLazyVerticalStackPage: View {
    var body: some View {
        MSDisplayContainer {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(1...100, id: \.self) {
                        Text("Row \($0)")
                    }
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSLazyVerticalStackPage()
    }
}
