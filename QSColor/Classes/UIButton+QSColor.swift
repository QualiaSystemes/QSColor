//
//  UIButton+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 06/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

@IBDesignable public extension UIButton {

    @IBInspectable public var titleColorIdForStateNormal: String {
        get {
            return self.titleColorIdForStateNormal
        }
        set {
            self.setTitleColor(QSColorManager.sharedInstance.color(newValue), for: UIControlState.normal)
        }
    }
    
    @IBInspectable public var titleColorIdForStateHighlighted: String {
        get {
            return self.titleColorIdForStateHighlighted
        }
        set {
            self.setTitleColor(QSColorManager.sharedInstance.color(newValue), for: UIControlState.highlighted)
        }
    }
    
    @IBInspectable public var titleColorIdForStateDisabled: String {
        get {
            return self.titleColorIdForStateDisabled
        }
        set {
            self.setTitleColor(QSColorManager.sharedInstance.color(newValue), for: UIControlState.disabled)
        }
    }
    
    @IBInspectable public var titleColorIdForStateSelected: String {
        get {
            return self.titleColorIdForStateSelected
        }
        set {
            self.setTitleColor(QSColorManager.sharedInstance.color(newValue), for: UIControlState.selected)
        }
    }
    
    @IBInspectable public var titleColorIdForStateFocused: String {
        get {
            return self.titleColorIdForStateFocused
        }
        set {
            if #available(iOS 9.0, *) {
                self.setTitleColor(QSColorManager.sharedInstance.color(newValue), for: UIControlState.focused)
            }
        }
    }
}
