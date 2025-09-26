//
//  MSScrollViewReaderPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSScrollViewReaderPage: View {
    @Namespace var topID
    @Namespace var bottomID

    var body: some View {
        MSDisplayContainer {
            ScrollViewReader { proxy in
                ScrollView {
                    Button("Scroll to Bottom") {
                        withAnimation {
                            proxy.scrollTo(bottomID)
                        }
                    }
                    .id(topID)

                    VStack(spacing: 0) {
                        ForEach(0..<100) { i in
                            color(fraction: Double(i) / 100)
                                .frame(height: 32)
                        }
                    }

                    Button("Top") {
                        withAnimation {
                            proxy.scrollTo(topID)
                        }
                    }
                    .id(bottomID)
                }
            }
        }
    }
    
    func color(fraction: Double) -> Color {
        Color(red: fraction, green: 1 - fraction, blue: 0.5)
    }
}

#Preview {
    MSPreviewContainer {
        MSScrollViewReaderPage()
    }
}
