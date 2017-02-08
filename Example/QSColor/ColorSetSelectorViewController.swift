//
//  ColorSetSelectorViewController.swift
//  QSColor
//
//  Created by Benjamin Laffontas on 08/02/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import QSColor

class ColorSetSelectorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didChangeColorSet(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            QSColorManager.sharedInstance.colorSet = MainColorSet()
        } else {
            QSColorManager.sharedInstance.colorSet = SecondColorSet()
        }
    }
}
