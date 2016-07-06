//
//  ViewController.swift
//  ParseFun
//
//  Created by Vince on 7/4/16.
//  Copyright © 2016 Vince. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
    
    var numOfTaps = 0
    
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var theButton: UIButton!
    
    @IBAction func theButtonTapped(sender: AnyObject) {
        
        ParseShit.sendMessage(messageTextField.text!)
        
        messageTextField.resignFirstResponder()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        

        ParseShit.login()
        
        

        
        let testObject = PFObject(className: "TestObject")
        
        testObject["foo"] = "bar"
        
        testObject.saveInBackground()
        

        
        print("what up")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

