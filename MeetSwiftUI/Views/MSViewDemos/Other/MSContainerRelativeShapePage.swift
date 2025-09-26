//
//  MSContainerRelativeShapePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSContainerRelativeShapePage: View {
    var body: some View {
        MSDisplayContainer {
            ContainerRelativeShape()
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSContainerRelativeShapePage()
    }
}
