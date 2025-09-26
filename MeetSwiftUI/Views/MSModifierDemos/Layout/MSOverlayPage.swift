//
//  MSOverlayPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

import SwiftUI

struct MSOverlayPage: View {
    @State private var selectedAlignment: MSAlignment = .center

    var body: some View {
        MSDisplayContainer {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 200, height: 100)
                .overlay(alignment: selectedAlignment.alignment) {
                    Image(systemName: "star.fill")
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.red)
                }
        }
        .msConfigInspector {
            Picker("Alignment", selection: $selectedAlignment.animation()) {
                ForEach(MSAlignment.allCases, id: \.self) { align in
                    Text(align.displayName)
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSOverlayPage()
    }
}
