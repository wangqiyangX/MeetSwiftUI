//
//  MSPresentationDetentsPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/25.
//

import SwiftUI

struct MSPresentationDetentsPage: View {
    @State private var isPresented = false
    @State private var currentPresentationDetent: PresentationDetent = .medium

    @State private var useLarge = true
    @State private var useMedium = false
    @State private var useHeight = false
    @State private var useFraction = false

    @State private var presentationHeiht: Double = 400
    @State private var presentationFraction: Double = 0.4

    var dentents: Set<PresentationDetent> {
        var temp: Set<PresentationDetent> = []

        if useLarge {
            temp.insert(.large)
        }
        if useMedium {
            temp.insert(.medium)
        }
        if useHeight {
            temp.insert(.height(presentationHeiht))
        }
        if useFraction {
            temp.insert(.fraction(presentationFraction))
        }

        return temp
    }

    var body: some View {
        MSDisplayContainer {
            Button("Open") {
                withAnimation {
                    isPresented.toggle()
                }
            }
            .sheet(isPresented: $isPresented) {
                Form {
                    Button("To Large") {
                        currentPresentationDetent = .large
                    }
                    if useMedium {
                        Button("To Medium") {
                            currentPresentationDetent = .medium
                        }
                    }
                    if useHeight {
                        Button("To Height: \(presentationHeiht.formatted())") {
                            currentPresentationDetent = .height(
                                presentationHeiht
                            )
                        }
                    }
                    if useFraction {
                        Button("To Fraction: \(presentationFraction.formatted())") {
                            currentPresentationDetent = .fraction(
                                presentationFraction
                            )
                        }
                    }
                }
                .presentationDetents(
                    dentents,
                    selection: $currentPresentationDetent
                )
            }
        }
        .msConfigInspector {
            Toggle("use `.large`", isOn: $useLarge)
                .disabled(true)
            Toggle("use `.medium`", isOn: $useMedium)
            Toggle("use `.height`", isOn: $useHeight)
            if useHeight {
                LabeledContent {
                    Slider(
                        value: $presentationHeiht,
                        in: 0...500,
                        step: 50
                    )
                    .padding(.leading)
                } label: {
                    Text("Height")
                }
            }
            Toggle("use `.fraction`", isOn: $useFraction)
            if useFraction {
                LabeledContent {
                    Slider(value: $presentationFraction, in: 0...1)
                        .padding(.leading)
                } label: {
                    Text("Fraction")
                }
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSPresentationDetentsPage()
    }
}
