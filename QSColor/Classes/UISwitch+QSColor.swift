//
//  UISwitch+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 06/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

@IBDesignable public extension UISwitch {
    
    @IBInspectable public var onTintColorId: String {
        get {
            return self.onTintColorId
        }
        set {
            self.onTintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
    
    @IBInspectable public var thumbTintColorId: String {
        get {
            return self.thumbTintColorId
        }
        set {
            self.thumbTintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
    
}
