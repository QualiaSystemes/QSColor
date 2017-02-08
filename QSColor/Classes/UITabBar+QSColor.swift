//
//  UITabBar+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 06/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

@IBDesignable public extension UITabBar {
    
    @IBInspectable public var barTintColorId: String {
        get {
            return self.barTintColorId
        }
        set {
            self.barTintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
    
    @IBInspectable public var unselectedItemTintColorId: String {
        get {
            return self.unselectedItemTintColorId
        }
        set {
            if #available(iOS 10.0, *) {
                self.unselectedItemTintColor = QSColorManager.sharedInstance.color(newValue)
            }
        }
    }
}
