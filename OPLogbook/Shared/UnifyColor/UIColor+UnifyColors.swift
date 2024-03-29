//
//  UIColor+UnifyColors.swift
//  OPLogbook
//
//  Created by Alvin Matthew Pratama on 16/07/22.
//

import UIKit

extension UIColor {
    private static func getColorByHexaRGB(_ hexaRGB: String) -> UIColor {
        UIColor(hexaRGB: hexaRGB) ?? UIColor.black
    }
    
    public static var BB10: UIColor {
        getColorByHexaRGB("5F6266")
    }
    
    public static var BB30: UIColor {
        getColorByHexaRGB("282A30")
    }
    
    public static var BB50: UIColor {
        getColorByHexaRGB("1B1D21")
    }
    
    public static var BW50: UIColor {
        getColorByHexaRGB("F5F5F5")
    }
    
    public static var TL10: UIColor {
        getColorByHexaRGB("DAE5ED")
    }
    
    public static var GY50: UIColor {
        getColorByHexaRGB("6B6F74")
    }
}
