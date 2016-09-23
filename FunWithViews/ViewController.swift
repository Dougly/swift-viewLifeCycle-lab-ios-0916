//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Black Squares for Dice
    @IBOutlet weak var bottomRight: UIView!
    @IBOutlet weak var middleRight: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var middle: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    @IBOutlet weak var middleLeft: UIView!
    @IBOutlet weak var topLeft: UIView!
    
    //Rolls
    @IBOutlet weak var teal: UILabel!
    @IBOutlet weak var purple: UILabel!
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var blue: UILabel!
    @IBOutlet weak var green: UILabel!
    @IBOutlet weak var yellow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearScores()
        clearSquares()
    }
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        showSquares(roll: roll)
        showScore(roll: roll)
        
        
    }
    
    //shows black squares according to dice roll
    func showSquares (roll: Int) {
        switch roll {
        case 1:
            clearSquares()
            middle.isHidden = false
            break
        case 2:
            clearSquares()
            bottomLeft.isHidden = false
            topRight.isHidden = false
            break
        case 3:
            clearSquares()
            bottomLeft.isHidden = false
            topRight.isHidden = false
            middle.isHidden = false
            break
        case 4:
            clearSquares()
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
            break
        case 5:
            clearSquares()
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
            middle.isHidden = false
            break
        case 6:
            clearSquares()
            topLeft.isHidden = false
            middleLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            middleRight.isHidden = false
            bottomRight.isHidden = false
            break
        default:
            clearSquares()
            break
            
        }
    }
    
    //displays the score
    func showScore (roll: Int) {
        let rollAsString = String(roll)
        if purple.isHidden {
            purple.isHidden = false
            purple.text = rollAsString
        } else if red.isHidden {
            red.isHidden = false
            red.text = rollAsString
        } else if blue.isHidden {
            blue.isHidden = false
            blue.text = rollAsString
        } else if green.isHidden {
            green.isHidden = false
            green.text = rollAsString
        } else if yellow.isHidden {
            yellow.isHidden = false
            yellow.text = rollAsString
        } else if teal.isHidden {
            teal.isHidden = false
            teal.text = rollAsString
        } else {
            clearScores()
        }
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    //clears the board of dice and rolls
    func clearScores () {
        teal.isHidden = true
        purple.isHidden = true
        red.isHidden = true
        blue.isHidden = true
        green.isHidden = true
        yellow.isHidden = true
    }
    
    func clearSquares () {
        topLeft.isHidden = true
        bottomRight.isHidden = true
        middleRight.isHidden = true
        topRight.isHidden = true
        middle.isHidden = true
        bottomLeft.isHidden = true
        middleLeft.isHidden = true
    }

}
