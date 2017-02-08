//
//  QSGradientView.swift
//  Pods
//
//  Created by Benjamin on 07/12/2016.
//
//

import UIKit

public class QSGradientView: UIView {
    
    @IBInspectable public var startColorId: String? {
        didSet{
            setupView()
        }
    }
    
    @IBInspectable public var endColorId: String? {
        didSet{
            setupView()
        }
    }
    
    @IBInspectable public var startPoint: CGPoint = CGPoint.zero {
        didSet{
            setupView()
        }
    }
    
    @IBInspectable public var endPoint: CGPoint = CGPoint.zero {
        didSet{
            setupView()
        }
    }
    
    private var gradientLayer: CAGradientLayer {
        return layer as! CAGradientLayer
    }
    
    public override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        setupView()
    }
    
    private func setupView() {
        if self.startColorId != nil && self.endColorId != nil {
            self.gradientLayer.colors = [QSColorManager.sharedInstance.color(self.startColorId!).cgColor, QSColorManager.sharedInstance.color(self.endColorId!).cgColor]
            self.gradientLayer.startPoint = self.startPoint
            self.gradientLayer.endPoint = self.endPoint
            
            self.setNeedsDisplay()
        }        
    }
}
