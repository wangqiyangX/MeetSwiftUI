//
//  MSClippedPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/16.
//

import SwiftUI

struct MSClippedPage: View {
    @State private var clippedRectangleWidth: Double = 175
    @State private var clippedRectangleHeight: Double = 100
    
    var body: some View {
        MSDisplayContainer {
            Text("This long text string is clipped")
                .font(.title2)
                .fixedSize()
                .frame(width: clippedRectangleWidth, height: clippedRectangleHeight)
                .clipped()
                .border(Color.secondary)
        }
        .msConfigInspector {
            Slider(value: $clippedRectangleWidth, in: 10...300) {
                Text("Width")
            }
            Slider(value: $clippedRectangleHeight, in: 10...150) {
                Text("Height")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSClippedPage()
    }
}
