//
//  MSScrollDismissesKeyboardPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/28.
//

import SwiftUI

enum MSScrollDismissesKeyboardMode: CaseIterable, Identifiable {
    case automatic
    case immediately
    case interactively
    case never

    var id: Self { self }

    var name: String {
        switch self {
        case .automatic:
            "Automatic"
        case .immediately:
            "Immediatedly"
        case .interactively:
            "Interactively"
        case .never:
            "Never"
        }
    }

    var mode: ScrollDismissesKeyboardMode {
        switch self {
        case .automatic:
            ScrollDismissesKeyboardMode.automatic
        case .immediately:
            ScrollDismissesKeyboardMode.immediately
        case .interactively:
            ScrollDismissesKeyboardMode.interactively
        case .never:
            ScrollDismissesKeyboardMode.never
        }
    }
}

struct MSScrollDismissesKeyboardPage: View {
    @State private var text = ""
    @State private var selectedScrollDismissesKeyboardMode:
        MSScrollDismissesKeyboardMode = .immediately

    var body: some View {
        MSDisplayContainer {
            ScrollView {
                TextField("Prompt", text: $text)
                    #if os(iOS)
                        .textFieldStyle(.roundedBorder)
                    #endif
                    .padding()
                ForEach(0..<50) { index in
                    Text("\(index)")
                        .padding()
                }
            }
            .scrollDismissesKeyboard(
                selectedScrollDismissesKeyboardMode.mode
            )
        }.msConfigInspector {
            Picker("Mode", selection: $selectedScrollDismissesKeyboardMode) {
                ForEach(MSScrollDismissesKeyboardMode.allCases, id: \.self) {
                    mode in
                    Text(mode.name)
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSScrollDismissesKeyboardPage()
    }
}
