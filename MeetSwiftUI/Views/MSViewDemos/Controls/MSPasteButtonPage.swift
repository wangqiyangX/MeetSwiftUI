//
//  MSPasteButtonPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

#if !os(watchOS)
    import SwiftUI

    struct MSPasteButtonPage: View {
        @State private var pastedText: String = ""

        var body: some View {
            MSDisplayContainer {
                PasteButton(payloadType: String.self) { strings in
                    pastedText = strings[0]
                }

                Text(pastedText)
            }
            .msConfigInspector(.list) {

            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSPasteButtonPage()
        }
    }
#endif
