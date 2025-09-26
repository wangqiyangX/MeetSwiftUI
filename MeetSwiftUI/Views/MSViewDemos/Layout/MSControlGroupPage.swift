//
//  MSControlGroupPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

#if !os(watchOS)
import SwiftUI

struct MSControlGroupPage: View {
    var body: some View {
        MSDisplayContainer {
            ControlGroup {
                Button("Media") {
                    
                }
                Button("Chart") {
                    
                }
                Button("Graphic") {
                    
                }
            } label: {
                Label("Plus", systemImage: "plus")
            }
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSControlGroupPage()
    }
}
#endif
