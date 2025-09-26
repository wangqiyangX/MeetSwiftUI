//
//  MSSliderPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSSliderPage: View {
    @State private var currentValue = 0.6
    
    var body: some View {
        MSDisplayContainer {
            Slider(value: $currentValue)
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSliderPage()
    }
}
