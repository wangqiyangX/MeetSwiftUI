//
//  MSLabelsHiddenPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSLabelsHiddenPage: View {
    @State private var useLabelsHidden = false

    var body: some View {
        MSDisplayContainer {
            VStack {
                Toggle(isOn: .constant(true)) {
                    Text("Toggle 1")
                }
                .if(useLabelsHidden) { view in
                    view.labelsHidden()
                }

                Toggle(isOn: .constant(false)) {
                    Text("Toggle 2")
                }
            }
        }
        .msConfigInspector {
            Toggle("Use `.labelsHidden()`", isOn: $useLabelsHidden)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSLabelsHiddenPage()
    }
}
