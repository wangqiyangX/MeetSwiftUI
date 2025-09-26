//
//  MSEditButtonPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

#if os(iOS) || os(visionOS)
    import SwiftUI

    struct MSEditButtonPage: View {
        @Environment(\.editMode) private var editMode

        @State private var text = "Something"
        var body: some View {
            MSDisplayContainer {
                if editMode?.wrappedValue.isEditing == true {
                    TextField("Text", text: $text)
                } else {
                    Text(text)
                }
                EditButton()
            }
            .msConfigInspector(.form) {

            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSEditButtonPage()
        }
    }
#endif
