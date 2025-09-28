//
//  MSModifier.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/14.
//

import SwiftUI

enum MSModifier: Equatable, Identifiable {
    #if !os(watchOS)
        case badge
        case popover
        case contextMenu
        case projectionEffect
    #endif
    case confirmationDialog
    case controlSize
    case defaultFocus
    case focused
    case itemProvider
    case persistentSystemOverlays
    case presentationDragIndicator
    case safeAreaInset
    case sheet
    case submitScope
    case toolbar
    case toolbarTitleMenu

    // Effects
    case blendMode
    case blur
    case border
    case brightness
    case buttonBorderShape
    case clipped
    case clipShape
    case colorMultiply
    case compositingGroup
    case contentShape
    case contrast
    case drawingGroup
    case foregroundStyle
    case grayScale
    #if os(iOS)
        case hoverEffect
    #endif
    case hueRotation
    case luminanceToAlpha
    case mask
    case matchedGeometryEffect
    case opacity
    case preferredColorScheme
    case rotation3DEffect
    case saturation
    case scaleEffect
    case shadow
    case toolbarColorScheme

    // Layout
    case alignmentGuide
    case anchorPreference
    case aspectRatio
    case background
    case backgroundPreference
    case containerRelativeFrame
    case contentMargins
    case coordinateSpace
    #if os(watchOS)
        case digitalCrownAccessory
    #endif
    case fixedSize
    case frame
    #if !os(macOS)
        case fullScreenCover
    #endif
    case gridCellAnchor
    case gridCellColumns
    case gridCellUnsizedAxes
    case gridColumnAlignment
    case hidden
    case ingoreSafeArea
    case labelsHidden
    case layoutPriority
    #if !os(watchOS)
        case menuInicator
    #endif
    case menuOrder
    case navigationSpliViewColumnWidth
    case overlay
    case overlayPreferenceValue
    case padding
    case position
    case presentationDetents
    case safeAreaPadding
    case scaledToFill
    case scaledToFit
    case scenePadding
    case scrollContentBackground
    case scrollDismissesKeyboard
    case scrollIndicators
    case statusBarHidden
    case toolbarBackground
    case toolbarRole
    case transformAnchorPreference
    case zIndex

    var id: Self { self }

    var name: String {
        switch self {
        #if !os(watchOS)
            case .badge:
                return "Badge"
            case .popover:
                return "Popover"
            case .contextMenu:
                return "Context Menu"
            case .projectionEffect:
                return "Projection Effect"
        #endif
        case .confirmationDialog:
            return "Confirmation Dialog"
        case .controlSize:
            return "Control Size"
        case .defaultFocus:
            return "Default Focus"
        case .focused:
            return "Focused"
        case .itemProvider:
            return "Item Provider"
        case .persistentSystemOverlays:
            return "Persistent System Overlays"
        case .presentationDragIndicator:
            return "Presentation Drag Indicator"
        case .safeAreaInset:
            return "Safe Area Inset"
        case .sheet:
            return "Sheet"
        case .submitScope:
            return "Submit Scope"
        case .toolbar:
            return "Toolbar"
        case .toolbarTitleMenu:
            return "Toolbar Title Menu"
        case .blendMode:
            return "Blend Mode"
        case .blur:
            return "Blur"
        case .border:
            return "Border"
        case .brightness:
            return "Brightness"
        case .buttonBorderShape:
            return "Button Border Shape"
        case .clipped:
            return "Clipped"
        case .clipShape:
            return "Clip Shape"
        case .colorMultiply:
            return "Color Multiply"
        case .compositingGroup:
            return "Compositing Group"
        case .contentShape:
            return "Content Shape"
        case .contrast:
            return "Contrast"
        case .drawingGroup:
            return "Drawing Group"
        case .foregroundStyle:
            return "Foreground Style"
        case .grayScale:
            return "Gray Scale"
        #if os(iOS)
            case .hoverEffect:
                return "Hover Effect"
        #endif
        case .hueRotation:
            return "Hue Rotation"
        case .luminanceToAlpha:
            return "Luminance To Alpha"
        case .mask:
            return "Mask"
        case .matchedGeometryEffect:
            return "Matched Geometry Effect"
        case .opacity:
            return "Opacity"
        case .preferredColorScheme:
            return "Preferred Color Scheme"

        case .rotation3DEffect:
            return "Rotation 3D Effect"
        case .saturation:
            return "Saturation"
        case .scaleEffect:
            return "Scale Effect"
        case .shadow:
            return "Shadow"
        case .toolbarColorScheme:
            return "Toolbar Color Scheme"
        case .alignmentGuide:
            return "AlignmentGuide"
        case .anchorPreference:
            return "AnchorPreference"
        case .aspectRatio:
            return "AspectRatio"
        case .background:
            return "Background"
        case .backgroundPreference:
            return "Background Preference"
        case .containerRelativeFrame:
            return "Container Relative Frame"
        case .contentMargins:
            return "Content Margins"
        case .coordinateSpace:
            return "Coordinate Space"
        #if os(watchOS)
            case .digitalCrownAccessory:
                return "DigitalCrown Accessory"
        #endif
        case .fixedSize:
            return "Fixed Size"
        case .frame:
            return "Frame"
        #if !os(macOS)
            case .fullScreenCover:
                return "FullScreen Cover"
        #endif
        case .gridCellAnchor:
            return "Grid Cell Anchor"
        case .gridCellColumns:
            return "Grid Cell Columns"
        case .gridCellUnsizedAxes:
            return "Grid Cell Unsized Axes"
        case .gridColumnAlignment:
            return "Grid Column Alignment"
        case .hidden:
            return "Hidden"
        case .ingoreSafeArea:
            return "Ingore Safe Area"
        case .labelsHidden:
            return "Labels Hidden"
        case .layoutPriority:
            return "Layout Priority"
        #if !os(watchOS)
            case .menuInicator:
                return "Menu Inicator"
        #endif
        case .menuOrder:
            return "Menu Order"
        case .navigationSpliViewColumnWidth:
            return "NavigationSpliView Column Width"
        case .overlay:
            return "Overlay"
        case .overlayPreferenceValue:
            return "Overlay Preference Value"
        case .padding:
            return "Padding"
        case .position:
            return "Position"
        case .presentationDetents:
            return "Presentation Detents"
        case .safeAreaPadding:
            return "Safe Area Padding"
        case .scaledToFill:
            return "Scaled to Fill"
        case .scaledToFit:
            return "Scaled to Fit"
        case .scenePadding:
            return "Scene Padding"
        case .scrollContentBackground:
            return "Scroll Content Background"
        case .scrollDismissesKeyboard:
            return "Scroll Dismisses Keyboard"
        case .scrollIndicators:
            return "Scroll Indicators"
        case .statusBarHidden:
            return "Status Bar Hidden"
        case .toolbarBackground:
            return "Toolbar Background"
        case .toolbarRole:
            return "Toolbar Role"
        case .transformAnchorPreference:
            return "Transform Anchor Preference"
        case .zIndex:
            return "Z Index"
        }
    }

    @MainActor @ViewBuilder func detailView() -> some View {
        switch self {
        #if !os(watchOS)
            case .badge:
                MSBadgePage()
            case .contextMenu:
                MSContextMenuPage()
            case .projectionEffect:
                MSProjectionEffectPage()
            case .popover:
                MSPopoverPage()
        #endif
        case .confirmationDialog:
            MSConfirmationDialogPage()
        case .controlSize:
            MSControlSizePage()
        case .defaultFocus:
            MSDefaultFocusPage()
        case .focused:
            MSFocusedPage()
        case .itemProvider:
            MSItemProviderPage()
        case .persistentSystemOverlays:
            MSPersistentSystemOverlaysPage()
        case .presentationDragIndicator:
            MSPresentationDragIndicatorPage()
        case .safeAreaInset:
            MSSafeAreaInsetPage()
        case .sheet:
            MSSheetPage()
        case .submitScope:
            MSSubmitScopePage()
        case .toolbar:
            MSToolbarPage()
        case .toolbarTitleMenu:
            MSToolbarTitleMenuPage()
        case .blendMode:
            MSBlendModePage()
        case .blur:
            MSBlurPage()
        case .border:
            MSBorderPage()
        case .brightness:
            MSBrightnessPage()
        case .buttonBorderShape:
            MSButtonBorderShapePage()
        case .clipped:
            MSClippedPage()
        case .clipShape:
            MSClipShapePage()
        case .colorMultiply:
            MSColorMultiplyPage()
        case .compositingGroup:
            MSCompositingGroupPage()
        case .contentShape:
            MSContentShapePage()
        case .contrast:
            MSContrastPage()
        case .drawingGroup:
            MSDrawingGroupPage()
        case .foregroundStyle:
            MSForegroundStylePage()
        case .grayScale:
            MSGrayscalePage()
        #if os(iOS)
            case .hoverEffect:
                MSHoverEffectPage()
        #endif
        case .hueRotation:
            MSHueRotationPage()
        case .luminanceToAlpha:
            MSluminanceToAlphaPage()
        case .mask:
            MSMaskPage()
        case .matchedGeometryEffect:
            MSMatchedGeometryEffectPage()
        case .opacity:
            MSOpacityPage()
        case .preferredColorScheme:
            MSPreferredColorSchemePage()
        case .rotation3DEffect:
            MSRotation3DEffectPage()
        case .saturation:
            MSSaturationPage()
        case .scaleEffect:
            MSScaleEffectPage()
        case .shadow:
            MSShadowPage()
        case .toolbarColorScheme:
            MSToolbarColorSchemePage()
        case .alignmentGuide:
            MSAlignmentGuidePage()
        case .anchorPreference:
            MSAnchorPreferencePage()
        case .aspectRatio:
            MSAspectRatioPage()
        case .background:
            MSBackgroundPage()
        case .backgroundPreference:
            MSBackgroundPreferencePage()
        case .containerRelativeFrame:
            MSContainerRelativeFramePage()
        case .contentMargins:
            MSContentMarginsPage()
        case .coordinateSpace:
            MSCoordinateSpacePage()
        #if os(watchOS)
            case .digitalCrownAccessory:
                MSDigitalCrownAccessoryPage()
        #endif
        case .fixedSize:
            MSFixedSizePage()
        case .frame:
            MSFramePage()
        #if !os(macOS)
            case .fullScreenCover:
                MSFullScreenCoverPage()
        #endif
        case .gridCellAnchor:
            MSGridCellAnchorPage()
        case .gridCellColumns:
            MSGridCellColumnsPage()
        case .gridCellUnsizedAxes:
            MSGridCellUnsizedAxes()
        case .gridColumnAlignment:
            MSGridColumnAlignmentPage()
        case .hidden:
            MSHiddenPage()
        case .ingoreSafeArea:
            MSIgnoresSafeAreaPage()
        case .labelsHidden:
            MSLabelsHiddenPage()
        case .layoutPriority:
            MSLayoutPriorityPage()
        #if !os(watchOS)
            case .menuInicator:
                MSMenuIndicatorPage()
        #endif
        case .menuOrder:
            MSMenuOrderPage()
        case .navigationSpliViewColumnWidth:
            MSNavigationSplitViewColumnWidthPage()
        case .overlay:
            MSOverlayPage()
        case .overlayPreferenceValue:
            MSOverlayPreferenceValuePage()
        case .padding:
            MSPaddingPage()
        case .position:
            MSPositionPage()
        case .presentationDetents:
            MSPresentationDetentsPage()
        case .safeAreaPadding:
            MSSafeAreaPaddingPage()
        case .scaledToFill:
            MSScaledToFillPage()
        case .scaledToFit:
            MSScaledToFitPage()
        case .scenePadding:
            MSScenePaddingPage()
        case .scrollContentBackground:
            MSScrollContentBackgroundPage()
        case .scrollDismissesKeyboard:
            MSScrollDismissesKeyboardPage()
        case .scrollIndicators:
            MSScrollIndicatorsPage()
        case .statusBarHidden:
            MSStatusBarHiddenPage()
        case .toolbarBackground:
            MSToolbarBackgroundPage()
        case .toolbarRole:
            MSToolbarRolePage()
        case .transformAnchorPreference:
            MSTransformAnchorPreferencePage()
        case .zIndex:
            MSZIndexPage()
        }
    }
}

extension MSModifier {
    static var controls: [MSModifier] {
        var temp: [MSModifier] = [
            .confirmationDialog,
            .controlSize,
            .defaultFocus,
            .focused,
            .itemProvider,
            .persistentSystemOverlays,
            .presentationDragIndicator,
            .safeAreaInset,
            .sheet,
            .submitScope,
            .toolbar,
            .toolbarTitleMenu,
        ]

        #if !os(watchOS)
            temp.append(.badge)
            temp.append(.contextMenu)
        #endif

        return temp
    }
    static var effects: [MSModifier] {
        var temp: [MSModifier] = [
            .blendMode,
            .blur,
            .border,
            .brightness,
            .buttonBorderShape,
            .clipped,
            .clipShape,
            .colorMultiply,
            .compositingGroup,
            .contentShape,
            .contrast,
            .drawingGroup,
            .foregroundStyle,
            .grayScale,
            .hueRotation,
            .luminanceToAlpha,
            .mask,
            .matchedGeometryEffect,
            .opacity,
            .preferredColorScheme,
            .rotation3DEffect,
            .saturation,
            .scaleEffect,
            .shadow,
            .toolbarColorScheme,
        ]
        #if os(iOS)
            temp.append(.hoverEffect)
        #endif
        #if !os(watchOS)
            temp.append(.contextMenu)
            temp.append(.popover)
            temp.append(.projectionEffect)
        #endif

        return temp
    }

    static var layout: [MSModifier] {
        var temp: [MSModifier] = [
            .alignmentGuide,
            .anchorPreference,
            .aspectRatio,
            .background,
            .backgroundPreference,
            .containerRelativeFrame,
            .contentMargins,
            .coordinateSpace,
            .fixedSize,
            .frame,
            .gridCellAnchor,
            .gridCellColumns,
            .gridCellUnsizedAxes,
            .gridColumnAlignment,
            .hidden,
            .ingoreSafeArea,
            .labelsHidden,
            .layoutPriority,
            .menuOrder,
            .navigationSpliViewColumnWidth,
            .overlay,
            .overlayPreferenceValue,
            .padding,
            .position,
            .presentationDetents,
            .safeAreaPadding,
            .scaledToFill,
            .scaledToFit,
            .scenePadding,
            .scrollContentBackground,
            .scrollDismissesKeyboard,
            .scrollIndicators,
            .toolbarBackground,
        ]

        #if !os(watchOS)
            temp.append(.menuInicator)
        #endif
        #if !os(macOS)
            temp.append(.fullScreenCover)
        #endif
        #if os(watchOS)
            temp.append(.digitalCrownAccessory)
        #endif
        #if os(iOS)
            temp.append(.statusBarHidden)
        #endif

        return temp
    }
}
