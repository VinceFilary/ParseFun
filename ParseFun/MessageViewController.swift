//
//  MessageViewController.swift
//  
//
//  Created by Vince on 7/4/16.
//
//

import UIKit
import Parse

class MessageViewController: UIViewController {

    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var numMessagesLabel: UILabel!
    
    @IBAction func refreshMessages(sender: AnyObject) {

            ParseShit.getMessages { (messys) in
                self.messageTextView.text = messys.joinWithSeparator(", ")
                self.numMessagesLabel.text = String(messys.count)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let query = PFQuery(className: "Messages")
        
        
        
//        var numMessages = query.countObjects(nil)
//        query.selectKeys(["theMessage"])
//        print(query.countObjects(nil))
        
//        query.findObjectsInBackground()
        
        
        var messys: [String] = []
        
        query.findObjectsInBackgroundWithBlock { (responses, error) in
            
            for message in responses! {
                
                messys.append(String(message["theMessage"]))
                print(message["theMessage"])
            }
            
            self.messageTextView.text = messys.joinWithSeparator(",")
            self.numMessagesLabel.text = String(responses!.count)
        }
        
        
//        query.countObjectsInBackgroundWithBlock { (numMessages, error) in
//            self.numMessagesLabel.text = String(numMessages)
//        }
        
        
        
        print(query)
        


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
