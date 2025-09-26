//
//  MSRenameButtonPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSRenameButtonPage: View {
    var body: some View {
        MSDisplayContainer {
            RenameButton()
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSRenameButtonPage()
    }
}
