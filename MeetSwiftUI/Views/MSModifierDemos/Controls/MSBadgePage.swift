//
//  MSBadgePage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

#if !os(watchOS)
    import SwiftUI

    struct MSBadgePage: View {
        var body: some View {
            MSDisplayContainer {
                Text("Something")
                    .badge("Label")
            }
            .msConfigInspector(.list) {

            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSBadgePage()
        }
    }
#endif
