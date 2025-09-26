//
//  MSSymbols.swift
//  MeetSwiftUI
//
//  Created by wangqiyang on 2025/9/25.
//

import Foundation

enum MSSymbols: CaseIterable {
    case whatsNew
    case draw
    case variable
    case multicolor
    case communication
    case weather
    case maps
    case objectsAndTools
    case devices
    case cameraAndPhotos
    case gaming
    case connectivity
    case transportation
    case automotive
    case accessibility
    case privacyAndSecurity
    case human
    case home
    case fitness
    case nature
    case editing
    case textFormatting
    case media
    case keyboard
    case commerce
    case time
    case health
    case shapes
    case arrows
    case indices
    case math

    var symbols: [String] {
        switch self {
        case .whatsNew:
            MSWhatsNewSymbols
        case .draw:
            MSDrawSymbols
        case .variable:
            MSVariableSymbols
        case .multicolor:
            MSMulticolorSymbols
        case .communication:
            MSCommunicationSymbols
        case .weather:
            MSWeatherSymbols
        case .maps:
            MSMapsSymbols
        case .objectsAndTools:
            MSObjectsAndTools
        case .devices:
            MSDevicesSymbols
        case .cameraAndPhotos:
            MSCameraAndPhotos
        case .gaming:
            MSGamingSymbols
        case .connectivity:
            MSConnectivitySymbols
        case .transportation:
            MSTransportationSymbols
        case .automotive:
            MSAutomotiveSymbols
        case .accessibility:
            MSAccessibilitySymbols
        case .privacyAndSecurity:
            MSPrivacyAndSecuritySymbols
        case .human:
            MSHumanSymbols
        case .home:
            MSHomeSymbols
        case .fitness:
            MSFitnessSymbols
        case .nature:
            MSNatureSymbols
        case .editing:
            MSEditingSymbols
        case .textFormatting:
            MSTextFormattingSymbols
        case .media:
            MSMediaSymbols
        case .keyboard:
            MSKeyboardSymbols
        case .commerce:
            MSCommerceSymbols
        case .time:
            MSTimeSymbols
        case .health:
            MSHealthSymbols
        case .shapes:
            MSShapesSymbols
        case .arrows:
            MSArrowsSymbols
        case .indices:
            MSIndicesSymbols
        case .math:
            MSMathSymbols
        }
    }
    
    var name: String {
        switch self {
        case .whatsNew:
            "What's New"
        case .draw:
            "Draw"
        case .variable:
            "Variable"
        case .multicolor:
            "Multicolor"
        case .communication:
            "Communication"
        case .weather:
            "Weather"
        case .maps:
            "Maps"
        case .objectsAndTools:
            "Objects & Tools"
        case .devices:
            "Devices"
        case .cameraAndPhotos:
            "Camera & Photos"
        case .gaming:
            "Gaming"
        case .connectivity:
            "Connectivity"
        case .transportation:
            "Transportation"
        case .automotive:
            "Automotive"
        case .accessibility:
            "Accessibility"
        case .privacyAndSecurity:
            "Privacy & Security"
        case .human:
            "Human"
        case .home:
            "Home"
        case .fitness:
            "Fitness"
        case .nature:
            "Nature"
        case .editing:
            "Editing"
        case .textFormatting:
            "Text Formatting"
        case .media:
            "Media"
        case .keyboard:
            "Keyboard"
        case .commerce:
            "Commerce"
        case .time:
            "Time"
        case .health:
            "Health"
        case .shapes:
            "Shapes"
        case .arrows:
            "Arrows"
        case .indices:
            "Indices"
        case .math:
            "Math"
        }
    }

    var displaySymbol: String {
        switch self {
        case .whatsNew:
            "sparkles"
        case .draw:
            "scribble"
        case .variable:
            "slider.horizontal.below.square.filled.and.square"
        case .multicolor:
            "paintpalette"
        case .communication:
            "message"
        case .weather:
            "cloud.sun"
        case .maps:
            "map"
        case .objectsAndTools:
            "folder"
        case .devices:
            "desktopcomputer"
        case .cameraAndPhotos:
            "camera"
        case .gaming:
            "gamecontroller"
        case .connectivity:
            "antenna.radiowaves.left.and.right"
        case .transportation:
            "car.fill"
        case .automotive:
            "steeringwheel"
        case .accessibility:
            "accessibility"
        case .privacyAndSecurity:
            "lock"
        case .human:
            "person.crop.circle"
        case .home:
            "house"
        case .fitness:
            "figure.run"
        case .nature:
            "leaf"
        case .editing:
            "slider.horizontal.3"
        case .textFormatting:
            "textformat"
        case .media:
            "playpause"
        case .keyboard:
            "command"
        case .commerce:
            "cart"
        case .time:
            "timer"
        case .health:
            "heart"
        case .shapes:
            "square.on.circle"
        case .arrows:
            "arrow.right"
        case .indices:
            "a.circle"
        case .math:
            "x.squareroot"
        }
    }
}
