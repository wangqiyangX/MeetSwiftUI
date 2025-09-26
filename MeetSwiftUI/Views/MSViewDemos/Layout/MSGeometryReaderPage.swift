//
//  MSGeometryReaderPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSGeometryReaderPage: View {
    var body: some View {
        MSDisplayContainer {
            GeometryReader { geometry in
                
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSGeometryReaderPage()
    }
}
