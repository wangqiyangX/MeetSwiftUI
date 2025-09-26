//
//  MSStepperPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSStepperPage: View {
    @State private var currentValue = 0.6
    
    var body: some View {
        MSDisplayContainer {
            Stepper(value: $currentValue) {
                Text("Value")
                Text(currentValue.formatted())
            }
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSStepperPage()
    }
}
