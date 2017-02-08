//
//  UIProgressView+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 06/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

@IBDesignable public extension UIProgressView {
    
    @IBInspectable public var progressTintColorId: String {
        get {
            return self.progressTintColorId
        }
        set {
            self.progressTintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
    
    @IBInspectable public var trackTintColorId: String {
        get {
            return self.trackTintColorId
        }
        set {
            self.trackTintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
    
}
