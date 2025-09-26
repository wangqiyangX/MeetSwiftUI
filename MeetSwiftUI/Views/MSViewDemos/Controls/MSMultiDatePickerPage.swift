//
//  MSMultiDatePickerPage.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/13.
//

#if os(iOS)
import SwiftUI

struct MSMultiDatePickerPage: View {

    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone

    var bounds: Range<Date> {
        let start = Date.now
        let end = Date.now.addingTimeInterval(604800)
        return start..<end
    }

    @State private var dates: Set<DateComponents> = []

    var body: some View {
        MSDisplayContainer {
            MultiDatePicker(
                "Dates",
                selection: $dates,
                in: bounds
            )
        }
        .msConfigInspector {
            
        }
    }
}

#Preview {
    MSPreviewContainer {
        MSMultiDatePickerPage()
    }
}
#endif
