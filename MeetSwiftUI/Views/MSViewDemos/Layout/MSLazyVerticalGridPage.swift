//
//  MSLazyVerticalGridPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSLazyVerticalGridPage: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        MSDisplayContainer {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0x1f600...0x1f679, id: \.self) { value in
                        Text(String(format: "%x", value))
                        Text(emoji(value))
                            .font(.largeTitle)
                    }
                }
            }
        }
    }

    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}

#Preview {
    MSPreviewContainer {
        MSLazyVerticalGridPage()
    }
}
