//
//  MSPickerPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

struct MSPickerPage: View {
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }

    @State private var selectedFlavor: Flavor = .chocolate

    var body: some View {
        MSDisplayContainer {
            Picker("Flavor", selection: $selectedFlavor) {
                Text("Chocolate").tag(Flavor.chocolate)
                Text("Vanilla").tag(Flavor.vanilla)
                Text("Strawberry").tag(Flavor.strawberry)
            }
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSPickerPage()
    }
}
