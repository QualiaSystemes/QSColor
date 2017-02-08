//
//  QSColorManager.swift
//  QSColor
//
//  Created by Benjamin on 05/12/2016.
//  Copyright © 2016 Qualia. All rights reserved.
//

import Foundation

open class QSColorSet: NSObject {
    
    func colors() -> [String: String] {
        var colors = [String: String]()
        for c in Mirror(reflecting: self).children {
            if let id = c.label, let value = (c.value as? String) {
                colors[id] = value
            }
        }
        return colors
    }
}

public class QSColorManager: NSObject {
    
    public var colorSet: QSColorSet?
    
    public static let sharedInstance: QSColorManager = QSColorManager()
    
    private override init() {}
    
    public func color (_ id: String) -> UIColor {
        if self.colorSet != nil {
            let c: [String: String] = self.colorSet!.colors()
            return UIColor(c[id]!)
        }
        return UIColor.white
    }
}
