//
//  UISlider+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 06/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

@IBDesignable public extension UISlider {

    @IBInspectable public var minimumTrackTintColorId: String {
        get {
            return self.minimumTrackTintColorId
        }
        set {
            self.minimumTrackTintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
    
    @IBInspectable public var maximumTrackTintColorId: String {
        get {
            return self.maximumTrackTintColorId
        }
        set {
            self.maximumTrackTintColor = QSColorManager.sharedInstance.color(newValue)
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
