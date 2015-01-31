//
//  ViewController.swift
//  Postcard
//
//  Created by Stuart Gross on 12/6/14.
//  Copyright (c) 2014 Stuart Gross. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var EnterNameTextField: UITextField!
    @IBOutlet weak var EnterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonClick(sender: UIButton) {
        MessageLabel.hidden = false
        MessageLabel.text = EnterMessageTextField.text
        MessageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = EnterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        EnterNameTextField.text = ""
        EnterNameTextField.resignFirstResponder()
        EnterMessageTextField.text = ""
        EnterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Postcard sent", forState:UIControlState.Normal)
    }

}
// Code within brackets will command a sent message when selected.

