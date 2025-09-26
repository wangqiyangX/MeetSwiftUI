//
//  MSHiddenPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSHiddenPage: View {
    @State private var useHidden = false

    var body: some View {
        MSDisplayContainer {
            HStack {
                Image(systemName: "a.circle.fill")
                Image(systemName: "b.circle.fill")
                Image(systemName: "c.circle.fill")
                    .if(useHidden) { view in
                        view.hidden()
                    }
                Image(systemName: "d.circle.fill")
            }
        }
        .msConfigInspector {
            Toggle("use `.hidden()`", isOn: $useHidden)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSHiddenPage()
    }
}
