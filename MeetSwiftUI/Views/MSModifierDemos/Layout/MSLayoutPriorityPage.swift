//
//  MSLayoutPriorityPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSLayoutPriorityPage: View {
    @State private var priority: Double = 1

    var body: some View {
        MSDisplayContainer {
            HStack {
                Text("This is a moderately long string.")
                    .font(.largeTitle)
                    .border(Color.gray)

                Spacer()

                Text("This is a higher priority string.")
                    .font(.largeTitle)
                    .layoutPriority(priority)
                    .border(Color.gray)
            }
        }
        .msConfigInspector {
            Slider(value: $priority, in: 0...5) {
                Text("Priority")
                Text(priority.formatted())
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("5")
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSLayoutPriorityPage()
    }
}
