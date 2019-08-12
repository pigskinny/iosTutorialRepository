//
//  ViewController.swift
//  Diceee
//
//  Created by Айаал Романов on 23/02/2019.
//  Copyright © 2019 Aiaal Romanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    func updateDiceImages() { //function that changes dice images
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
    
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func viewDidLoad() { //function that loads right away after app was launched
        super.viewDidLoad()
           updateDiceImages()
        self.becomeFirstResponder() //to get shake gesture
    }

    //We are willing to become first responder to get shake motion
    override var canBecomeFirstResponder: Bool{
        get {
            return true
        }
    }
    //Enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            updateDiceImages()
        }
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) { //button action
       updateDiceImages()
    }
    
}

 
