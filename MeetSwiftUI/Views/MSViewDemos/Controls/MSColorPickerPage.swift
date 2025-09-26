//
//  MSColorPickerPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

#if !os(watchOS)
    import SwiftUI

    struct MSColorPickerPage: View {
        @State private var selectedColor: Color = .accentColor
        @State private var supportsOpacity: Bool = false

        var body: some View {
            MSDisplayContainer {
                ColorPicker(
                    selection: $selectedColor,
                    supportsOpacity: supportsOpacity
                ) {
                    Label("Color", systemImage: "paintbrush")
                    Text("Select the color")
                }
            }
            .msConfigInspector(
                codeString:
                    """
                    struct ColorPickerPage: View {
                        @State private var selectedColor: Color = .accentColor
                        @State private var supportsOpacity: Bool = false

                        var body: some View {
                            ColorPicker(
                                "Color",
                                selection: $selectedColor,
                                supportsOpacity: supportsOpacity
                            )
                        }
                    }
                    """
            ) {
                Toggle("Supports Opacity", isOn: $supportsOpacity)
            }
        }
    }

    #Preview {
        MSPreviewContainer {
            MSColorPickerPage()
        }
    }
#endif
