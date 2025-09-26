//
//  MSForegroundStylePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/17.
//

import SwiftUI

struct MSForegroundStylePage: View {
    @State private var selectedColor: Color = .teal

    var body: some View {
        MSDisplayContainer {
            VStack {
                HStack {
                    Image(systemName: "triangle.fill")
                    Text("Hello, world!")
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 40, height: 20)
                }
                .foregroundStyle(selectedColor)
                .foregroundStyle(
                    .linearGradient(
                        colors: [.yellow, .blue],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            }
            .msConfigInspector {

            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSForegroundStylePage()
    }
}
