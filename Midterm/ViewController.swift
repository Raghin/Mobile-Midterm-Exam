//  Peter Smith
//  ViewController.swift
//  Midterm
//
//  Created by student on 2016-02-26.
//  Copyright © 2016 mobilePervasive. All rights reserved.
//  this program simulates a mini shopping list with renamable labels and incremental numbers

import UIKit

class ViewController: UIViewController {

    //item name labels
    @IBOutlet weak var listName: UITextField!
    @IBOutlet weak var itemOne: UITextField!
    @IBOutlet weak var itemTwo: UITextField!
    @IBOutlet weak var itemThree: UITextField!
    @IBOutlet weak var itemFour: UITextField!
    @IBOutlet weak var itemFive: UITextField!
    
    
    //number labels
    @IBOutlet weak var itemNumberOne: UILabel!
    @IBOutlet weak var itemNumbertwo: UILabel!
    @IBOutlet weak var itemNumberThree: UILabel!
    @IBOutlet weak var itemNumberFour: UILabel!
    @IBOutlet weak var itemNumberFive: UILabel!
    
    //stepper buttons
    @IBOutlet weak var stepperOne: UIStepper!
    @IBOutlet weak var stepperTwo: UIStepper!
    @IBOutlet weak var stepperThree: UIStepper!
    @IBOutlet weak var stepperFour: UIStepper!
    @IBOutlet weak var stepperFive: UIStepper!
    
    @IBAction func stepperValueChanged(sender: AnyObject) {
        itemNumberOne.text = Int(stepperOne.value).description
        itemNumbertwo.text = Int(stepperTwo.value).description
        itemNumberThree.text = Int(stepperThree.value).description
        itemNumberFour.text = Int(stepperFour.value).description
        itemNumberFive.text = Int(stepperFive.value).description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stepperOne.minimumValue = 0
        stepperTwo.minimumValue = 0
        stepperThree.minimumValue = 0
        stepperFour.minimumValue = 0
        stepperFive.minimumValue = 0
    }
    
    @IBAction func resetApp(sender: AnyObject) {
        stepperOne.value = 0
        stepperTwo.value = 0
        stepperThree.value = 0
        stepperFour.value = 0
        stepperFive.value = 0
        itemNumberOne.text = Int(stepperOne.value).description
        itemNumbertwo.text = Int(stepperTwo.value).description
        itemNumberThree.text = Int(stepperThree.value).description
        itemNumberFour.text = Int(stepperFour.value).description
        itemNumberFive.text = Int(stepperFive.value).description
        listName.text = "Shopping List"
        itemOne.text = ""
        itemTwo.text = ""
        itemThree.text = ""
        itemFour.text = ""
        itemFive.text = ""
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

