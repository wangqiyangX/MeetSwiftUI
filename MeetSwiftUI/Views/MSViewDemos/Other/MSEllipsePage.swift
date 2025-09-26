//
//  MSEllipsePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSEllipsePage: View {
    var body: some View {
        MSDisplayContainer {
            Ellipse()
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSEllipsePage()
    }
}
