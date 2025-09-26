//
//  MSContentShapePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/17.
//

import SwiftUI

struct MSContentShapePage: View {
    var body: some View {
        MSDisplayContainer {
            VStack {
                Image(systemName: "apple.logo")
                    .resizable()
                    .scaledToFit()
                    #if !os(iOS)
                        .contentShape(.focusEffect, Circle())
                    #endif
                    .onTapGesture {
                        print("Clicked")
                    }
            }
        }
        .msConfigInspector {

        }
    }
}

#Preview {
    MSPreviewContainer {
        MSContentShapePage()
    }
}
