//
//  MSTextEditorPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

#if !os(watchOS)
    import SwiftUI

    struct MSTextEditorPage: View {
        @State private var text = "Input..."
        @State private var selection: TextSelection?

        var body: some View {
            MSDisplayContainer {
                TextEditor(text: $text, selection: $selection)
                    .frame(minHeight: 120)
            }
            .msConfigInspector(.form) {

            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSTextEditorPage()
        }
    }
#endif
