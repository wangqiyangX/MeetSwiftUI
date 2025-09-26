//
//  MSFullScreenCoverPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/24.
//

#if !os(macOS)
    import SwiftUI

    struct MSFullScreenCoverPage: View {
        @State private var isPresenting = false

        var body: some View {
            MSDisplayContainer {
                Button("Present Full-Screen Cover") {
                    isPresenting.toggle()
                }
                .fullScreenCover(
                    isPresented: $isPresenting,
                    onDismiss: didDismiss
                ) {
                    VStack {
                        Text("A full-screen modal view.")
                            .font(.title)
                        Text("Tap to Dismiss")
                    }
                    .onTapGesture {
                        isPresenting.toggle()
                    }
                    .foregroundColor(.white)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity
                    )
                    .background(Color.blue)
                    .ignoresSafeArea(edges: .all)
                }
            }
            .msConfigInspector {
                
            }
        }

        func didDismiss() {

        }
    }

    #Preview {
        MSPreviewContainer {
            MSFullScreenCoverPage()
        }
    }
#endif
