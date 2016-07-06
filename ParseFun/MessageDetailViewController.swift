//
//  MessageDetailViewController.swift
//  ParseFun
//
//  Created by Vince on 7/5/16.
//  Copyright © 2016 Vince. All rights reserved.
//

import UIKit
import Parse

class MessageDetailViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var objectIDLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
//    var objectIdString: String! = ""
    
    var currentMessageObject: PFObject!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Message Detail View Loaded")
        messageLabel.text = currentMessageObject["theMessage"] as! String
        
        let dateCreated: NSDate = currentMessageObject.createdAt!
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .LongStyle
        dateFormatter.timeStyle = .LongStyle
        let dateString = dateFormatter.stringFromDate(dateCreated)
        
        
        timeLabel.text = dateString
        
        
        objectIDLabel.text =  currentMessageObject.objectId
        
        print(currentMessageObject.description)
        print("")
        print("")
        print(currentMessageObject.description)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
