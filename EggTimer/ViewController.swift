//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        
        if (hardness == "soft") {
            print(softTime)
//        } else if (hardness == "medium") {
//            print(mediumTime)
//        } else {
//            print(hardTime)
//        }
    }
    
}
}

/* Critical thinking steps
 
 1. How would I set a timer for each egg? A: Create a const for each egg type and attach a number of seconds to each.
 2. How would I activate the timer? A: Upon a button press activate the proper const that corresponds to the button pressed.
 
 */
