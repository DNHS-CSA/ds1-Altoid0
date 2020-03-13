//
//  Distance.swift
//  SwiftPortfolio
//
//  Created by Shah, Tanay on 3/12/20.
//  Copyright © 2020 Shah, Tanay. All rights reserved.
//

import Foundation
import UIKit
class DistanceController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    
    @IBOutlet weak var speed: UITextField!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var distance: UILabel!
    
    // Loads at initialization
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        speed.text = "0.0"
        time.text = "0.0"
        distance.text = "0.0"
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
        // let is for values that are not modified
        let s1 = Float(speed.text!) // Input value, !(Bang) avoids errors
        let s2 = Float(time.text!)

        // Pythagorean Calculation
        let s3 = (s1! * s2!)
        let u = " miles"
        // Set calculation to screen
        distance.text = String(s3) + String(u)
        print("Distance  \(distance.text!)")
    
    }
}
