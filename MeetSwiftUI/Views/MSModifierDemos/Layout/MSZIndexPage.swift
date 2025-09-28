//
//  MSZIndexPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSZIndexPage: View {
    @State private var zIndexValue: Double = 1

    var body: some View {
        MSDisplayContainer {
            VStack {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 100, height: 100, alignment: .center)
                    .zIndex(zIndexValue)

                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100, alignment: .center)
                    .rotationEffect(.degrees(45))
            }
        }
        .msConfigInspector {
            Stepper("z Index", value: $zIndexValue, in: 0...1)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSZIndexPage()
    }
}
