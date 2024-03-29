//
//  Typography+Constant.swift
//  OPLogbook
//
//  Created by Alvin Matthew Pratama on 18/07/22.
//

import UIKit

public struct TypographyConstant {
    internal static let helveticeNeue = UIFont(name: "HelveticaNeue-Regular", size: 1) ?? UIFont.systemFont(ofSize: 1)
    internal static let helveticeNeueBold = UIFont(name: "HelveticaNeue-Bold", size: 1) ?? UIFont.boldSystemFont(ofSize: 1)
    
    internal static let heading1Size: CGFloat = 24
    internal static let heading2Size: CGFloat = 20
    internal static let heading3Size: CGFloat = 18
    internal static let display1Size: CGFloat = 16
    internal static let display2Size: CGFloat = 14
    internal static let display3Size: CGFloat = 12
    internal static let smallSize: CGFloat = 10
    
    internal static let heading1LineHeight: CGFloat = 30
    internal static let heading2LineHeight: CGFloat = 26
    internal static let heading3LineHeight: CGFloat = 24
    internal static let display1LineHeight: CGFloat = 20
    internal static let display2LineHeight: CGFloat = 18
    internal static let display3LineHeight: CGFloat = 16
    internal static let paragraph1LineHeight: CGFloat = 26
    internal static let paragraph2LineHeight: CGFloat = 22
    internal static let paragraph3LineHeight: CGFloat = 18
    internal static let smallLineHeight: CGFloat = 12
}

public enum TypographyStyle {
    case bold
    case strikethrough
}

public enum TypographyType {
    case heading1
    case heading2
    case heading3
    case display1
    case display2
    case display3
    case paragraph1
    case paragraph2
    case paragraph3
    case small
}

public struct TypographyAttribute {
    internal let size: CGFloat
    internal var lineHeight: CGFloat
}
