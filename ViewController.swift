//
//  ViewController.swift
//  calculator
//
//  Created by Harold  on 12/31/15.
//  Copyright © 2015 Harold . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var screenadd = ""
    var firstSet = Int()
    var secondSet = Int()
    var userOperation = ""
    @IBOutlet weak var screen: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var multiplicationButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var reminderButton: UIButton!
    @IBOutlet weak var subtractionButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    
    }
    
    
    @IBAction func numOne(sender: AnyObject) {
        screenadd += (button1.titleLabel!.text)!
        screen.text = screenadd
        
    }
    
    @IBAction func numTwo() {
        screenadd += (button2.titleLabel!.text)!
        screen.text = screenadd
    }

    @IBAction func numThree() {
        screenadd += (button3.titleLabel!.text)!
        screen.text = screenadd
    }
   
    @IBAction func numFour() {
        screenadd += (button4.titleLabel!.text)!
        screen.text = screenadd
    }
    
    @IBAction func numFive() {
        screenadd += (button5.titleLabel!.text)!
        screen.text = screenadd
    }
    
    @IBAction func numSix() {
        screenadd += (button6.titleLabel!.text)!
        screen.text = screenadd
    }
    
    @IBAction func numSeven() {
        screenadd += (button7.titleLabel!.text)!
        screen.text = screenadd
    }
    
    @IBAction func numEight() {
        screenadd += (button8.titleLabel!.text)!
        screen.text = screenadd
    }
    @IBAction func numNine() {
        screenadd += (button9.titleLabel!.text)!
        screen.text = screenadd
    }
    @IBAction func numZero() {
        screenadd += (button0.titleLabel!.text)!
        screen.text = screenadd
    }
    
    @IBAction func enter() {
        let result = screen.text
        secondSet = Int(result!)!
        if userOperation == "+"{
            screen.text = String(firstSet + secondSet)
            screenadd = ""
        }
        if userOperation == "*"{
            screen.text = String(firstSet*secondSet)
            screenadd = ""
        }
        if userOperation == "/"{
            screen.text = String(Float(firstSet/secondSet))
            screenadd = ""
        }
        if userOperation == "%"{
            screen.text = String(firstSet%secondSet)
            screenadd = ""
        }
        if userOperation == "-"{
            screen.text = String(firstSet-secondSet)
            screenadd = ""
        }

        
    }
    
    @IBAction func plus() {
        //let result = screen.text
        firstSet = Int(screen.text!)!
        screen.text = "+"
        screenadd = ""
        userOperation = "+"
        
    }
    
    @IBAction func Multiplication() {
        let result = screen.text
        firstSet = Int(result!)!
        screen.text = "x"
        screenadd = ""
        userOperation = "*"
    }
    
    @IBAction func division() {
        let result = screen.text
        firstSet = Int(result!)!
        screen.text = "/"
        screenadd = ""
        userOperation = "/"
    }
    @IBAction func Reminder() {
        let result = screen.text
        firstSet = Int(result!)!
        screen.text = "%"
        screenadd = ""
        userOperation = "%"
    }
    
    @IBAction func subtract() {
        let result = screen.text
        firstSet = Int(result!)!
        screen.text = "-"
        screenadd = ""
        userOperation = "-"
    }
    @IBAction func clear() {
        firstSet = 0
        secondSet = 0
        screenadd = ""
        userOperation = ""
        screen.text = "0"
        
    }
  
    
    

}

