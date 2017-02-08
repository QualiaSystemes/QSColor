//
//  UITextView+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 06/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

@IBDesignable public extension UITextView {
    
    @IBInspectable public var textColorId: String {
        get {
            return self.textColorId
        }
        set {
            self.textColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
}
