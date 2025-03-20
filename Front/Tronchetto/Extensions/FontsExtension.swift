//
//  FontsExtension.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 05/03/25.
//

import SwiftUI

extension Font {
    static func belanosima(fontStyle: Font.TextStyle, fontWeight: Font.Weight = .regular) -> Font {
        return Font.custom(Belanosima(weight: fontWeight).rawValue, size: fontStyle.size)
    }
    
    static func lato(fontStyle: Font.TextStyle = .body, fontWeight: Font.Weight = .regular) -> Font{
        return Font.custom(Lato(weight: fontWeight).rawValue, size: fontStyle.size)
    }
}

extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle:
            return 28
        case .title:
            return 24
        case .title2:
            return 20
        case .title3:
            return 18
        case .headline:
            return 16
        case .body:
            return 14
        case .callout:
            return 14
        case .caption:
            return 12
        default:
            return 14
        }
    }
}

enum Belanosima: String {
    case regular = "Belanosima-Regular"
    case semiBold = "Belanosima-Semibold"
    
    init(weight: Font.Weight) {
        switch weight {
        case .regular:
            self = .regular
        case .semibold:
            self = .semiBold
        default:
            self = .regular
        }
    }
}

enum Lato: String {
    case regular = "Lato-Regular"
    case semiBold = "Lato-Bold"
    case italic = "Lato-Italic"
    
    init(weight: Font.Weight) {
        switch weight {
        case .regular:
            self = .regular
        case .semibold:
            self = .semiBold
        case .bold:
            self = .italic
        default:
            self = .regular
        }
    }
}
