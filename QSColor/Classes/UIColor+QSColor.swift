//
//  UIColor+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 05/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

public extension UIColor {
    
    public convenience init(_ hex:String) {
        let scanner = Scanner(string: hex.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines))
        
        var count = hex.characters.count
        if (hex.hasPrefix("#")) {
            scanner.scanLocation = 1
            count -= 1
        }
        
        var hexColor: [CGFloat] = [0.0, 0.0, 0.0, 1.0]
        
        if count <= 8 && count > 0 && count % 2 == 0 {
            var colorVal:UInt32 = 0
            scanner.scanHexInt32(&colorVal)
            var deca = 8 * count / 2
            
            for i in 0...(count/2 - 1) {
                deca -= 8
                if deca > 0 {
                    hexColor[i] = CGFloat(Int(colorVal >> UInt32(deca)) & 0xff) / 255.0
                } else {
                    hexColor[i] = CGFloat(colorVal & 0xff) / 255.0
                }
            }
        }
        
        self.init(red:hexColor[0], green:hexColor[1], blue:hexColor[2], alpha:hexColor[3])
    }
}
