//
//  MSSpacerPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSSpacerPage: View {
    var body: some View {
        MSDisplayContainer {
            HStack {
                Spacer(minLength: 100)
                    .background {
                        Rectangle()
                            .fill()
                    }
                Text("Other")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .border(.black)
            }
            .border(.red)
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSSpacerPage()
    }
}
