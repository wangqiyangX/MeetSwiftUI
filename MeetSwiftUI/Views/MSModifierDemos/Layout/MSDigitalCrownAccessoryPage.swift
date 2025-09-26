//
//  MSDigitalCrownAccessoryPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/23.
//

#if os(watchOS)
    import SwiftUI

    struct MSDigitalCrownAccessoryPage: View {
        @State private var progress: Double = 0.3

        var body: some View {
            MSDisplayContainer {
                ProgressView(value: progress)
                    .progressViewStyle(.circular)
                    .digitalCrownAccessory(.visible)
                    .digitalCrownAccessory {
                        Text("progress")
                            .background {
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.gray)
                            }
                    }
            }
            .msConfigInspector(.vStack) {
                Slider(value: $progress, in: 0...1)
                    .listRowInsets(.init())
            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSDigitalCrownAccessoryPage()
        }
    }
#endif
