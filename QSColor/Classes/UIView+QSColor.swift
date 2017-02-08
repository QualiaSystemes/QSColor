//
//  UIView+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 06/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

@IBDesignable public extension UIView {
    
    @IBInspectable public var backgroundColorId: String {
        get {
            return self.backgroundColorId
        }        
        set {
            self.backgroundColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
    
    @IBInspectable public var tintColorId: String {
        get {
            return self.tintColorId
        }
        set {
            self.tintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
    
    @IBInspectable public var borderColorId: String {
        get {
            return self.borderColorId
        }
        set {
            self.layer.borderColor = QSColorManager.sharedInstance.color(newValue).cgColor
        }
    }
    
    @IBInspectable public var shadowColorId: String {
        get {
            return self.shadowColorId
        }
        set {
            self.layer.shadowColor = QSColorManager.sharedInstance.color(newValue).cgColor
        }
    }
}
