//
//  MSNavigationStackPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSNavigationStackPage: View {
    var body: some View {
        MSDisplayContainer {
            NavigationStack {
                
            }
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSNavigationStackPage()
    }
}
