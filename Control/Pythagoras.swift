//
//  Pythagoras.swift
//  SwiftPortfolio
//
//  Created by Shah, Tanay on 3/11/20.
//  Copyright © 2020 Shah, Tanay. All rights reserved.
//

import Foundation
import UIKit
class PythagController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var side1: UITextField!
    @IBOutlet weak var side2: UITextField!
    @IBOutlet weak var side3: UILabel!
    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        side1.text = "0.0"
        side2.text = "0.0"
        side3.text = "0.0"
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
    // let is for values that are not modified
    // initialization of tuple (struct for swift)
    /*
     Option 1 for creating a tuple
     let side = (Float(side1.text!),Float(side2.text!))
     */
    typealias side = (side1: Float, side2: Float)
    let sides:side = (Float(side1.text!)!,Float(side2.text!)!)
    // Pythagorean Calculation with the use of tuple
    let s3 = sqrt( (sides.0 * sides.0) + (sides.1 * sides.1) )

        // Set calculation to screen
        side3.text = String(s3)
        print("Pyth  \(side3.text!)")
    
    }
}
