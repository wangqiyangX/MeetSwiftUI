//
//  MSAutocorrectionDisabledPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

struct MSAutocorrectionDisabledPage: View {
    @State private var address = ""
    @State private var useAutocorrectionDisabled = false
    
    var body: some View {
        MSDisplayContainer {
            TextField("1234 Main St.", text: $address)
                .keyboardType(.default)
                .autocorrectionDisabled(useAutocorrectionDisabled)
        }
        .msConfigInspector(.list) {
            Toggle("Use `.autocorrectionDisabled()`", isOn: $useAutocorrectionDisabled)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSAutocorrectionDisabledPage()
    }
}
