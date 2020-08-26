//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    //declared variables for the two image view features (Dice1 and Dice2)
    
    //Below is the function for a Touch Up Inside, which refers to the user tapping the iPhone like a button.
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
       //above defines a neat and tidy array constant for us to refer to
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        //above has us displaying an image on left and right dice (respectively) while telling the code to pull at random an integer from 0-5 (the places in our diceArray) to display for the user
    }
    
}

//when code is even simpler - we call this refactoring, we take our code and try to make it simpler (aka no code that is repeating or unnecessary)

