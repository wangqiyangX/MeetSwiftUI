//
//  MSDatePickerPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

import SwiftUI

struct MSDatePickerPage: View {
    @State private var selectedDate: Date = .now
    @State private var displayDate = true
    @State private var displayHourAndMinute = false

    var bounds: ClosedRange<Date> {
        let start = Date.now
        let end = Date.now.addingTimeInterval(604800)
        return start...end
    }

    // OptionSet 类型
    var components: DatePickerComponents {
        var temp: DatePickerComponents = []

        if displayDate {
            temp.insert(.date)
        }
        if displayHourAndMinute {
            temp.insert(.hourAndMinute)
        }

        return temp
    }

    @ViewBuilder
    func content() -> some View {
        DatePicker(
            selection: $selectedDate,
            in: bounds,
            displayedComponents: components
        ) {
            Label("Date", systemImage: "calendar")
            Text("Select the date")
        }
    }

    var body: some View {
        MSDisplayContainer {
            content()
        }
        .msConfigInspector {
            Section {
                Toggle("Display Date", isOn: $displayDate)
                Toggle("Display Hour And Minute", isOn: $displayHourAndMinute)
            }
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSDatePickerPage()
    }
}
