// Swift V5.1
//  ViewController.swift
//  EggTimer App

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]

    //User selects hardness and prints the time relative to each eggs hardness
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle

        if eggTimes[hardness!] != nil {

            let result = eggTimes[hardness!]!

            print(result)
        }

    }
    
}



//Test commit
