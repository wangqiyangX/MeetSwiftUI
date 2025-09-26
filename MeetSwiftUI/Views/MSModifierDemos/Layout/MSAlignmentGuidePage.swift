//
//  MSAlignmentGuidePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/22.
//

import SwiftUI

struct MSAlignmentGuidePage: View {
    var body: some View {
        MSDisplayContainer {
            VStack {
                Text("Today's Weather")
                    .font(.title)
                    .border(.gray)

                HStack {
                    Text("🌧")
                        .alignmentGuide(VerticalAlignment.center) { _ in -20 }
                        .border(.gray)
                    Text("Rain & Thunderstorms")
                        .border(.gray)
                    Text("⛈")
                        .alignmentGuide(VerticalAlignment.center) { _ in 20 }
                        .border(.gray)
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSAlignmentGuidePage()
    }
}
