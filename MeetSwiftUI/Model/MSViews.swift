//
//  MSViews.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

enum MSViews: Equatable, Identifiable {
    case button
    case datePicker
    #if !os(watchOS)
        case colorPicker
        case disclosureGroup
        case groupBox
        case menu
        case outlineGroup
        case pasteButton
        case table
        case textEditor
    #endif

    #if os(iOS) || os(visionOS)
        case editButton
    #endif

    #if os(macOS)
        case horizontalSplitView
    #endif
    
    case form
    case gauge
    case label
    case labeledContent
    case link
    case list
    
    #if os(iOS)
        case multiDatePicker
    #endif
    
    case navigationLink
    case navigationSplitView
    case navigationStack
    case navigationView
    case picker
    case progressView
    case renameButton
    case scrollView
    case section
    case secureField
    case shareLink
    case signInWithAppleButton
    case slider
    case stepper
    case tabView
    case text
    case textField
    case toggle

    // Layout
    #if !os(watchOS)
        case controlGroup
    #endif
    case depthStack
    case geometryReader
    case horizontalStack
    case lazyHorizontalGrid
    case lazyHorizontalStack
    case lazyVerticalGrid
    case lazyVerticalStack
    case scrollViewReader
    case spacer
    case verticalStack
    case viewThatFits

    // Paint
    case angularGradient
    case ellipticalGradient
    case linearGradient
    case radialGradient

    // Other
    case asyncImage
    case canvas
    case capsule
    case circle
    case color
    case containerRelativeShape
    case contentUnavailableView
    case divider
    case ellipse
    case emptyView
    case group
    case image
    case path
    case rectangle
    case roundedRectangle
    #if os(macOS)
        case settingsLink
    #endif
    case timelineView

    var id: Self { self }

    var name: String {
        switch self {
        case .button:
            return "Button"
        case .datePicker:
            return "Date Picker"
        #if !os(watchOS)
            case .colorPicker:
                return "Color Picker"
            case .disclosureGroup:
                return "Disclosure Group"
            case .groupBox:
                return "Group Box"
            case .outlineGroup:
                return "Outline Group"
            case .pasteButton:
                return "Paste Button"
            case .menu:
                return "Menu"
            case .table:
                return "Table"
            case .textEditor:
                return "Text Editor"
            case .controlGroup:
                return "Control Group"
        #endif
        #if os(iOS) || os(visionOS)
            case .editButton:
                return "Edit Button"
            case .multiDatePicker:
                return "Multi Date Picker"
        #endif
        case .form:
            return "Form"
        case .gauge:
            return "Gauge"
        #if os(macOS)
            case .horizontalSplitView:
                return "Horizontal Split View"
        #endif
        case .label:
            return "Label"
        case .labeledContent:
            return "Labeled Content"
        case .link:
            return "Link"
        case .list:
            return "List"
        case .navigationLink:
            return "Navigation Link"
        case .navigationSplitView:
            return "Navigation Split View"
        case .navigationStack:
            return "Navigation Stack"
        case .navigationView:
            return "Navigation View"
        case .picker:
            return "Picker"
        case .progressView:
            return "Progress View"
        case .renameButton:
            return "Rename Button"
        case .scrollView:
            return "Scroll View"
        case .section:
            return "Section"
        case .secureField:
            return "Secure Field"
        case .shareLink:
            return "Share Link"
        case .signInWithAppleButton:
            return "Sign In With Apple Button"
        case .slider:
            return "Slider"
        case .stepper:
            return "Stepper"
        case .tabView:
            return "Tab View"
        case .text:
            return "Text"
        case .textField:
            return "Text Field"
        case .toggle:
            return "Toggle"
        case .depthStack:
            return "Depth Stack"
        case .geometryReader:
            return "Geometry Reader"
        case .horizontalStack:
            return "Horizontal Stack"
        case .lazyHorizontalGrid:
            return "Lazy Horizontal Grid"
        case .lazyHorizontalStack:
            return "Lazy Horizontal Stack"
        case .lazyVerticalGrid:
            return "Lazy Vertical Grid"
        case .lazyVerticalStack:
            return "Lazy Vertical Stack"
        case .scrollViewReader:
            return "Scroll View Reader"
        case .spacer:
            return "Spacer"
        case .verticalStack:
            return "Vertical Stack"
        case .viewThatFits:
            return "View That Fits"
        case .angularGradient:
            return "Angular Gradient"
        case .ellipticalGradient:
            return "Elliptical Gradient"
        case .linearGradient:
            return "Linear Gradient"
        case .radialGradient:
            return "Radial Gradient"
        case .asyncImage:
            return "Async Image"
        case .canvas:
            return "Canvas"
        case .capsule:
            return "Capsule"
        case .circle:
            return "Circle"
        case .color:
            return "Color"
        case .containerRelativeShape:
            return "Container Relative Shape"
        case .contentUnavailableView:
            return "Content Unavailable View"
        case .divider:
            return "Divider"
        case .ellipse:
            return "Ellipse"
        case .emptyView:
            return "Empty View"
        case .group:
            return "Group"
        case .image:
            return "Image"
        case .path:
            return "Path"
        case .rectangle:
            return "Rectangle"
        case .roundedRectangle:
            return "Rounded Rectangle"
        #if os(macOS)
            case .settingsLink:
                return "Settings Link"
        #endif
        case .timelineView:
            return "Timeline View"
        }
    }

    @MainActor @ViewBuilder func detailView() -> some View {
        switch self {
        case .button:
            MSButtonPage()
        case .datePicker:
            MSDatePickerPage()
        #if !os(watchOS)
            case .colorPicker:
                MSColorPickerPage()
            case .disclosureGroup:
                MSDisclosureGroupPage()
            #if os(iOS) || os(visionOS)
                case .editButton:
                    MSEditButtonPage()
            #endif
            case .groupBox:
                MSGroupBoxPage()
            case .menu:
                MSMenuPage()
            case .outlineGroup:
                MSOutlineGroupPage()
            case .pasteButton:
                MSPasteButtonPage()
            case .table:
                MSTablePage()
            case .textEditor:
                MSTextEditorPage()
            case .controlGroup:
                MSControlGroupPage()
        #endif
        case .form:
            MSFormPage()
        case .gauge:
            MSGaugePage()
        #if os(macOS)
            case .horizontalSplitView:
                MSHorizontalSplitViewPage()
        #endif
        case .label:
            MSLabelPage()
        case .labeledContent:
            MSLabeledContentPage()
        case .link:
            MSLinkPage()
        case .list:
            MSListPage()
        #if os(iOS)
            case .multiDatePicker:
                MSMultiDatePickerPage()
        #endif
        case .navigationLink:
            MSNavigationLinkPage()
        case .navigationSplitView:
            MSNavigationSplitViewPage()
        case .navigationStack:
            MSNavigationStackPage()
        case .navigationView:
            MSNavigationViewPage()
        case .picker:
            MSPickerPage()
        case .progressView:
            MSProgressViewPage()
        case .renameButton:
            MSRenameButtonPage()
        case .scrollView:
            MSScrollViewPage()
        case .section:
            MSSectionPage()
        case .secureField:
            MSSecureFieldPage()
        case .shareLink:
            MSShareLinkPage()
        case .signInWithAppleButton:
            MSSignInWithAppleButtonPage()
        case .slider:
            MSSliderPage()
        case .stepper:
            MSStepperPage()
        case .tabView:
            MSTabViewPage()
        case .text:
            MSTextPage()
        case .textField:
            MSTextFieldPage()
        case .toggle:
            MSTogglePage()
        case .depthStack:
            MSDepthStackPage()
        case .geometryReader:
            MSGeometryReaderPage()
        case .horizontalStack:
            MSHorizontalStackPage()
        case .lazyHorizontalGrid:
            MSLazyHorizontalGridPage()
        case .lazyHorizontalStack:
            MSLazyHorizontalStackPage()
        case .lazyVerticalGrid:
            MSLazyVerticalGridPage()
        case .lazyVerticalStack:
            MSLazyVerticalStackPage()
        case .scrollViewReader:
            MSScrollViewReaderPage()
        case .spacer:
            MSSpacerPage()
        case .verticalStack:
            MSVerticalStackPage()
        case .viewThatFits:
            MSViewThatFitsPage()
        case .angularGradient:
            MSAngularGradientPage()
        case .ellipticalGradient:
            MSEllipticalGradientPage()
        case .linearGradient:
            MSLinearGradientPage()
        case .radialGradient:
            MSRadialGradientPage()
        case .asyncImage:
            MSAsyncImagePage()
        case .canvas:
            MSCanvasPage()
        case .capsule:
            MSCapsulePage()
        case .circle:
            MSCirclePage()
        case .color:
            MSColorPage()
        case .containerRelativeShape:
            MSContainerRelativeShapePage()
        case .contentUnavailableView:
            MSContentUnavailableViewPage()
        case .divider:
            MSDividerPage()
        case .ellipse:
            MSEllipsePage()
        case .emptyView:
            MSEmptyViewPage()
        case .group:
            MSGroupPage()
        case .image:
            MSImagePage()
        case .path:
            MSPathPage()
        case .rectangle:
            MSRectanglePage()
        case .roundedRectangle:
            MSRoundedRectanglePage()
        #if os(macOS)
            case .settingsLink:
                MSSettingsLinkPage()
        #endif
        case .timelineView:
            MSTimelineViewPage()
        }
    }
}

extension MSViews {
    static var controls: [MSViews] {
        var temp: [MSViews] = [
            .button,
            .datePicker,
            .form,
            .gauge,
            .label,
            .labeledContent,
            .link,
            .list,
            .navigationLink,
            .navigationSplitView,
            .navigationStack,
            .navigationView,
            .picker,
            .progressView,
            .renameButton,
            .scrollView,
            .section,
            .secureField,
            .shareLink,
            .signInWithAppleButton,
            .slider,
            .stepper,
            .tabView,
            .text,
            .toggle,
        ]
        #if os(iOS) || os(visionOS)
            temp.append(.editButton)
        #endif
        #if os(macOS)
            temp.append(.horizontalSplitView)
        #endif
        #if os(iOS)
            temp.append(.multiDatePicker)
        #endif
        #if !os(watchOS)
            temp.append(.disclosureGroup)
            temp.append(.colorPicker)
            temp.append(.groupBox)
            temp.append(.menu)
            temp.append(.textEditor)
        #endif

        return temp
    }

    static var layout: [MSViews] {
        var temp: [MSViews] = [
            .depthStack,
            .geometryReader,
            .horizontalStack,
            .lazyHorizontalGrid,
            .lazyHorizontalStack,
            .lazyVerticalGrid,
            .lazyVerticalStack,
            .scrollViewReader,
            .spacer,
            .verticalStack,
            .viewThatFits,
        ]

        #if !os(watchOS)
            temp.append(.controlGroup)
        #endif

        return temp
    }

    static var paint: [MSViews] = [
        .angularGradient,
        .ellipticalGradient,
        .linearGradient,
        .radialGradient,
    ]

    static var other: [MSViews] {
        var temp: [MSViews] = [
            .asyncImage,
            .canvas,
            .capsule,
            .circle,
            .color,
            .containerRelativeShape,
            .contentUnavailableView,
            .divider,
            .ellipse,
            .emptyView,
            .group,
            .image,
            .path,
            .rectangle,
            .roundedRectangle,
        ]

        #if os(macOS)
            temp.append(.settingsLink)
        #endif

        temp.append(.timelineView)

        return temp
    }
}
