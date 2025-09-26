//
//  MSButtonPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

//enum BuiltInButtonStyle: String, CaseIterable, Identifiable {
//    case automatic
//    case bordered
//    case borderless
//    case borderedProminent
//    case plain
//    case glass
//    case glassProminent
//
//    var id: String { rawValue }
//
//    @ViewBuilder
//    func applyStyle<Label: View>(
//        @ViewBuilder content: @escaping () -> Button<Label>
//    ) -> some View {
//        switch self {
//        case .automatic:
//            content().buttonStyle(.automatic)
//        case .bordered:
//            content().buttonStyle(.bordered)
//        case .borderless:
//            content().buttonStyle(.borderless)
//        case .borderedProminent:
//            content().buttonStyle(.borderedProminent)
//        case .plain:
//            content().buttonStyle(.plain)
//        case .glass:
//            content().buttonStyle(.glass)
//        case .glassProminent:
//            content().buttonStyle(.glassProminent)
//        }
//    }
//}

enum BuiltInButtonRole: String, CaseIterable, Identifiable {
    case none
    case cancel
    case destructive
    case confirm
    case close

    var id: String { rawValue }

    var role: ButtonRole? {
        switch self {
        case .none: return nil
        case .cancel: return .cancel
        case .destructive: return .destructive
        case .confirm: return .confirm
        case .close: return .close
        }
    }
}

struct MSButtonPage: View {
    let codeString =
        """
        Button("Click") {

        }
        """

    @State private var selectedRole: BuiltInButtonRole = .none
    @State private var selectedButtonRepeatBehavior: ButtonRepeatBehavior =
        .automatic

    @ViewBuilder
    func content() -> some View {
        Button(role: selectedRole.role) {

        } label: {
            Label("Send", systemImage: "paperplane")
        }
        .buttonRepeatBehavior(selectedButtonRepeatBehavior)
    }

    var body: some View {
        MSDisplayContainer {
            content()
        }
        .msConfigInspector(codeString: codeString) {
            Section {
                Picker("Button Role", selection: $selectedRole) {
                    ForEach(BuiltInButtonRole.allCases) { role in
                        Text(role.rawValue.capitalized)
                            .tag(role)
                    }
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSButtonPage()
    }
}
