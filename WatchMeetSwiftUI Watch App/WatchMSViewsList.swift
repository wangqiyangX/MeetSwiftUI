//
//  WatchMSViewsList.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/23.
//

import SwiftUI

struct WatchMSViewsList: View {
    var body: some View {
        List {
            Section("Controls") {
                ForEach(MSViews.controls) { view in
                    NavigationLink {
                        view.detailView()
                    } label: {
                        Text(view.name)
                    }
                }
            }
            Section("Layout") {
                ForEach(MSViews.layout) { view in
                    NavigationLink {
                        view.detailView()
                    } label: {
                        Text(view.name)
                    }
                }
            }
            Section("Paint") {
                ForEach(MSViews.paint) { view in
                    NavigationLink {
                        view.detailView()
                    } label: {
                        Text(view.name)
                    }
                }
            }
            Section("Other") {
                ForEach(MSViews.other) { view in
                    NavigationLink {
                        view.detailView()
                    } label: {
                        Text(view.name)
                    }
                }
            }
        }
        .navigationTitle("Views")
    }
}

#Preview {
    MSPreviewContainer {
        WatchMSViewsList()
    }
}
