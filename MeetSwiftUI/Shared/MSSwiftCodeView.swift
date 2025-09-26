//
//  MSSwiftCodeView.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/26.
//

import Playgrounds
import SwiftTreeSitter
import SwiftTreeSitterLayer
import SwiftUI

struct MSSwiftCodeView: View {
    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
    }
}

#Playground {
    let swiftConfig = try LanguageConfiguration(
        tree_sitter_swift(),
        name: "Swift"
    )
//    let config = LanguageLayer.Configuration(
//        languageProvider: {
//            name in
//            switch name {
//            case "swift":
//                return swiftConfig
//            default:
//                return nil
//            }
//        }
//    )
//    let rootLayer = try LanguageLayer(
//        languageConfig: swiftConfig,
//        configuration: config
//    )
//    let source = """
//        struct MSSwiftCodeView: View {
//            var body: some View {
//                    Text("Hello, World!")
//                }
//            }
//        }
//        """
//    rootLayer.replaceContent(with: source)

}

@_silgen_name("tree_sitter_swift")
private func tree_sitter_swift() -> OpaquePointer!

extension Language {
    static var swift: Language {
        Language(tree_sitter_swift())
    }
}
