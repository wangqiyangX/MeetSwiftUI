//
//  MSPathPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSPathPage: View {
    var body: some View {
        MSDisplayContainer {
            Path(
                ellipseIn: CGRect(
                    x: 0,
                    y: 0,
                    width: 50,
                    height: 100
                )
            )
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSPathPage()
    }
}
