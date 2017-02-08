//
//  UIBarButtonItem+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 06/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

@IBDesignable public extension UIBarButtonItem {
    
    @IBInspectable public var tintColorId: String {
        get {
            return self.tintColorId
        }
        set {
            self.tintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
}
