//
//  MSContentMarginsPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/23.
//

import SwiftUI

struct MSContentMarginsPage: View {
    var body: some View {
        MSDisplayContainer {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(1..<6) { i in
                        Text("Item \(i)")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
            .contentMargins(.all, 20, for: .scrollContent)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSContentMarginsPage()
    }
}
