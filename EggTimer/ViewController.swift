
//  ViewController.swift

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12] //5m 7m 12m - converted to seconds
    
    //User selects hardness and prints the time relative to each eggs hardness
    @IBAction func hardnessSelected(_ sender: UIButton) {

        let hardness = sender.currentTitle //Gets label
        
        let result = eggTimes[hardness!]! //Gets value from label
        
        var timeLeft = result * 60
      
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if timeLeft > 0 {
                print ("\(timeLeft) seconds")
                timeLeft -= 1
            } else {
                Timer.invalidate()
            }
        }
    }
    
}
        
//        let hardness = sender.currentTitle
//
//        if eggTimes[hardness!] != nil {
//
//            let result = eggTimes[hardness!]!
//
//            print(result)
//        }
        
    

//class ViewController: UIViewController {
//
//var secondsRemaining = 30
//
//@IBAction func startTimer(_ sender: UIButton) {
//
//    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
//        if self.secondsRemaining > 0 {
//            print ("\(self.secondsRemaining) seconds")
//            self.secondsRemaining -= 1
//        } else {
//            Timer.invalidate()
//        }
//    }
//
// }
//}
