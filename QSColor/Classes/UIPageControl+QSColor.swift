//
//  UIPageControl+QSColor.swift
//  QSColor
//
//  Created by Benjamin on 06/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import UIKit

@IBDesignable public extension UIPageControl {
        
    @IBInspectable public var currentPageIndicatorTintColorId: String {
        get {
            return self.currentPageIndicatorTintColorId
        }
        set {
            self.currentPageIndicatorTintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
    
    @IBInspectable public var pageIndicatorTintColorId: String {
        get {
            return self.pageIndicatorTintColorId
        }
        set {
            self.pageIndicatorTintColor = QSColorManager.sharedInstance.color(newValue)
        }
    }
    
}
