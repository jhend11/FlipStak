//
//  ViewController.swift
//  FlipStak
//
//  Created by JOSH HENDERSHOT on 9/22/14.
//  Copyright (c) 2014 Joshua Hendershot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // first color
        var topColor = UIColor(red: 0.910, green: 0.976, blue: 0.333, alpha: 1.0)
        // second color
        var bottomColor = UIColor(red: 0.973, green: 0.204, blue: 0.333, alpha: 1.0)
        // array of colors in gradient
        var gradientColors: [AnyObject] = [topColor.CGColor, bottomColor.CGColor]
        // array of locations for colors in gradient
        var gradientLocations = [0.0, 1.0]
        // gradient layer
        var gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.frame
        
        gradientLayer.startPoint = CGPointMake(0.6, -0.3)
        gradientLayer.endPoint = CGPointMake(0.4, 1.1)
        
        // add colors to gradient layer
        gradientLayer.colors = gradientColors
        // add locations to gradient layer
        gradientLayer.locations = gradientLocations
        // add gradient to view layer as background
        self.view.layer.addSublayer(gradientLayer)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

