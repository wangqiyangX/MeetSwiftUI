//
//  MSMenuOrderPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSMenuOrderPage: View {
    var body: some View {
        MSDisplayContainer {
            Menu(".automatic") {
                Button("Zebra") {}
                Button("Apple") {}
                Button("Lemon") {}
                Button("Banana") {}
            }
            .menuOrder(.automatic)

            Menu(".fixed") {
                Button("Zebra") {}
                Button("Apple") {}
                Button("Lemon") {}
                Button("Banana") {}
            }
            .menuOrder(.fixed)
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSMenuOrderPage()
    }
}
