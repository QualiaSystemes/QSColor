//
//  UINavigationBar+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 06/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

@IBDesignable public extension UINavigationBar {
    
    @IBInspectable public var barTintColorId: String {
        get {
            return self.barTintColorId
        }
        set {
            self.barTintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
}
