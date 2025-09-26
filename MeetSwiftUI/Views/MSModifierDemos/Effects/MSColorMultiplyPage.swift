//
//  MSColorMultiplyPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

struct MSColorMultiplyPage: View {
    @State private var selectedColor: Color = .white

    var body: some View {
        MSDisplayContainer {
            Color.blue
                .frame(width: 120, height: 120, alignment: .center)
                .overlay(alignment: .center) {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 60, height: 60, alignment: .center)
                }
                .colorMultiply(selectedColor)
        }
        .msConfigInspector {
            #if !os(watchOS)
                ColorPicker(selection: $selectedColor) {
                    Text("Multiply Color")
                    Text("The white color will be normal")
                }
            #endif
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSColorMultiplyPage()
    }
}
