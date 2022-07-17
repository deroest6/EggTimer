
//  ViewController.swift

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 3, "Medium": 5, "Hard": 7]
    
    var timer = Timer()
    var buttonPressed = false
    
//    if buttonPressed == false {
//        titleLabel.text = "Do you like green eggs and ham?"
//    } else {
//        titileLabel.text = ""
//    }
    
    
    @IBOutlet weak var titleLabel: UILabel!
    //A click selects hardness and prints the time relative to each egg selection timer
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        self.titleLabel.text = "Do you like Green Eggs and Ham?"
        
        let hardness = sender.currentTitle //Gets label
        let result = eggTimes[hardness!]! //Gets value from label
        var timeLeft = result * 1 //Egg times converted to seconds
      
         timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if timeLeft > 0 {
                print ("\(timeLeft) seconds")
                timeLeft -= 1
            } else {
                self.timer.invalidate()
                self.titleLabel.text = "Done"
            }
        }
    }
    
}
