//
//  MSHorizontalSplitViewPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

#if os(macOS)
    import SwiftUI

    struct MSHorizontalSplitViewPage: View {
        var body: some View {
            MSDisplayContainer {
                HSplitView {
                    /*@START_MENU_TOKEN@*/Text("Leading") /*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Trailing") /*@END_MENU_TOKEN@*/
                }
            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSHorizontalSplitViewPage()
        }
    }
#endif
