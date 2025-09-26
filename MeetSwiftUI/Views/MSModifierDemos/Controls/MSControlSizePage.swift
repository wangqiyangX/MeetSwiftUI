//
//  MSControlSizePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSControlSizePage: View {
    @State private var value = 3.0
    @State private var selected = 1

    var body: some View {
        MSDisplayContainer {
            Group {
                Picker("Selection", selection: $selected) {
                    Text("option 1").tag(1)
                    Text("option 2").tag(2)
                    Text("option 3").tag(3)
                }
                Slider(value: $value, in: 1...10)
                Button("OK") {}
                    .buttonStyle(.borderedProminent)
            }
            .controlSize(.mini)
            .padding()
        }
        .msConfigInspector(.vStack) {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSControlSizePage()
    }
}
