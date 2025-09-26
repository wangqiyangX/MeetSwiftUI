//
//  MSScaleEffectPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/19.
//

import SwiftUI

struct MSScaleEffectPage: View {
    @State private var scale: CGSize = CGSize(width: 1, height: 1)
    @State private var anchor: MSAnchorPoint = .center

    var body: some View {
        MSDisplayContainer {
            Image(systemName: "envelope.badge.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .scaleEffect(scale, anchor: anchor.unitPoint)
                .border(.red)
        }
        .msConfigInspector {
            Slider(value: $scale.width, in: 0...2) {
                Text("Width")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("2")
            }
            Slider(value: $scale.height, in: 0...2) {
                Text("Height")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("2")
            }
            Picker("Anchor", selection: $anchor) {
                ForEach(MSAnchorPoint.allCases, id: \.self) { anchor in
                    Text(anchor.displayName)
                        .id(anchor)
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSScaleEffectPage()
    }
}
