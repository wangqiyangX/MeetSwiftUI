//
//  MSConfigContainer.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSConfigContainer<FormContent: View>: ViewModifier {
    let type: MSContainerType?
    let code: String?
    let formContent: () -> FormContent

    @Environment(MSConfig.self) private var config

    @ViewBuilder
    func formContainer() -> some View {
        @Bindable var config = config

        Form {
            Section {
                Picker("Container", selection: $config.containerType) {
                    ForEach(MSContainerType.allCases, id: \.self) {
                        type in
                        Text(type.name)
                    }
                }
                #if os(macOS)
                    if config.containerType == .form {
                        Toggle(
                            "Use Grouped Form Style",
                            isOn: $config.useGroupedFormStype
                        )
                    }
                #endif
            }
            formContent()
            if let code {
                Section("Code") {
                    Text(code)
                        #if !os(watchOS)
                            .textSelection(.enabled)
                        #endif
                    Button {
                        copyToClipboard(code)
                    } label: {
                        Label(
                            "Copy",
                            systemImage: "document.on.document"
                        )
                    }
                }
            }
        }
        .onAppear {
            if let type {
                config.containerType = type
            }
        }
    }

    func body(content: Content) -> some View {
        @Bindable var config = config

        VStack(spacing: 0) {
            content
            #if os(iOS)
                Divider()
                formContainer()
            #endif
        }
        #if os(macOS)
            .inspector(isPresented: $config.showInspectorView) {
                formContainer()
                .formStyle(.grouped)
                .toolbar {
                    Button {
                        withAnimation {
                            config.showInspectorView.toggle()
                        }
                    } label: {
                        Label("Inspector", systemImage: "sidebar.right")
                    }
                }
                .presentationDetents([.medium, .large])
            }
        #endif
        #if os(watchOS)
            .sheet(isPresented: $config.showInspectorView) {
                formContainer()
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        Spacer()
                        Button {
                            withAnimation {
                                config.showInspectorView.toggle()
                            }
                        } label: {
                            Label("Inspector", systemImage: "info.circle")
                        }
                    }
                }
            }
        #endif
    }

    func copyToClipboard(_ text: String) {
        #if os(iOS)
            UIPasteboard.general.string = text
        #elseif os(macOS)
            let pasteboard = NSPasteboard.general
            pasteboard.clearContents()
            pasteboard.setString(text, forType: .string)
        #endif
    }
}

extension View {
    func msConfigInspector<ConfigForm: View>(
        _ containerType: MSContainerType? = nil,
        codeString: String? = nil,
        @ViewBuilder content: @escaping () -> ConfigForm
    ) -> some View {
        modifier(
            MSConfigContainer(
                type: containerType,
                code: codeString,
                formContent: content
            )
        )
    }
}

#Preview {
    MSPreviewContainer {
        MSDisplayContainer {
            VStack {
                Text("Something")
            }
        }
        .msConfigInspector(
            .list,
            codeString:
                """
                Toggle(
                    "Use Grouped Form Style",
                    isOn: $config.useGroupedFormStype
                )
                """
        ) {
            Slider(value: .constant(10))
                .listRowInsets(.init())
        }
    }
}
