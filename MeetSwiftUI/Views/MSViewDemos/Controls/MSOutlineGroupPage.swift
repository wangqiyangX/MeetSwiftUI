//
//  MSOutlineGroupPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

#if !os(watchOS)
    import SwiftUI

    struct MSOutlineGroupPage: View {
        struct FileItem: Hashable, Identifiable, CustomStringConvertible {
            let id = UUID()
            var name: String
            var children: [FileItem]? = nil
            var description: String {
                switch children {
                case nil:
                    return "📄 \(name)"
                case .some(let children):
                    return children.isEmpty ? "📂 \(name)" : "📁 \(name)"
                }
            }
        }

        let data =
            FileItem(
                name: "users",
                children: [
                    FileItem(
                        name: "user1234",
                        children: [
                            FileItem(
                                name: "Photos",
                                children: [
                                    FileItem(name: "photo001.jpg"),
                                    FileItem(name: "photo002.jpg"),
                                ]
                            ),
                            FileItem(
                                name: "Movies",
                                children: [FileItem(name: "movie001.mp4")]
                            ),
                            FileItem(name: "Documents", children: []),
                        ]
                    ),
                    FileItem(
                        name: "newuser",
                        children: [
                            FileItem(name: "Documents", children: [])
                        ]
                    ),
                ]
            )

        var body: some View {
            MSDisplayContainer {
                OutlineGroup(data, children: \.children) { item in
                    Text("\(item.description)")
                }
            }
            .msConfigInspector(.list) {

            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSOutlineGroupPage()
        }
    }
#endif
