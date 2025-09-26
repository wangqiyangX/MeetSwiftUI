//
//  MSSectionPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSSectionPage: View {
    @State private var useInList = false
    
    var body: some View {
        MSDisplayContainer {
            Section {
                
            } header: {
                Text("Header")
            } footer: {
                Text("Footer")
            }
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSectionPage()
    }
}
