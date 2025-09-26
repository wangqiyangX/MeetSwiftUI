//
//  MSTimelineViewPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSTimelineViewPage: View {
    var body: some View {
        MSDisplayContainer {
            TimelineView(.animation) { context in
                let value = secondsValue(for: context.date)

                Circle()
                    .trim(from: 0, to: value)
                    .stroke()
            }
        }
    }
    
    private func secondsValue(for date: Date) -> Double {
        let seconds = Calendar.current.component(.second, from: date)
        return Double(seconds) / 60
    }
}

#Preview {
    MSPreviewContainer {
        MSTimelineViewPage()
    }
}
