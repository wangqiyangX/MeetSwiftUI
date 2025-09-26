//
//  MSTabViewPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSTabViewPage: View {
    var body: some View {
        MSDisplayContainer {
            TabView {
                Tab {
                    Text("Tab 1")
                }
                Tab {
                    Text("Tab 2")
                }
            }
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSTabViewPage()
    }
}
