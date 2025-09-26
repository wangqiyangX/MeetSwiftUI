//
//  MSCoordinateSpacePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/23.
//

import SwiftUI

struct MSCoordinateSpacePage: View {
    @State private var location = CGPoint(x: 20, y: 20)

    let edgeLength: Double = 200
    let circleD: Double = 40

    var body: some View {
        MSDisplayContainer {
            VStack {
                RoundedRectangle(cornerRadius: circleD / 2)
                    .fill(.red)
                    .frame(width: edgeLength, height: edgeLength)
                    .overlay(circle)
                Text("Location: \(Int(location.x)), \(Int(location.y))")
            }
            .coordinateSpace(.named("stack"))
        }
        .msConfigInspector {
            
        }
    }

    var circle: some View {
        Circle()
            .frame(width: circleD, height: circleD)
            .gesture(drag)
            .position(location)
    }

    var drag: some Gesture {
        DragGesture(coordinateSpace: .named("stack"))
            .onChanged { info in
                if info.location.x <= edgeLength - circleD / 2
                    && info.location.y <= edgeLength - circleD / 2
                    && info.location.x >= circleD / 2
                    && info.location.y >= circleD / 2
                {
                    location = info.location
                }
            }
    }
}

#Preview {
    MSPreviewContainer {
        MSCoordinateSpacePage()
    }
}
