//
//  MSMenuPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

#if !os(watchOS)
    import SwiftUI

    struct MSMenuPage: View {
        var body: some View {
            MSDisplayContainer {
                Menu("Actions") {
                    Button("Duplicate") {

                    }
                    Button("Rename") {

                    }
                    Button("Delete…") {

                    }
                    Menu("Copy") {
                        Button("Copy") {

                        }
                        Button("Copy Formatted") {

                        }
                        Button("Copy Library Path") {

                        }
                    }
                }
            }
            .msConfigInspector {

            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSMenuPage()
        }
    }
#endif
