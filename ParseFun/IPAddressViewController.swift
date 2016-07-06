//
//  IPAddressViewController.swift
//  ParseFun
//
//  Created by Vince on 7/5/16.
//  Copyright © 2016 Vince. All rights reserved.
//

import UIKit


class IPAddressViewController: UIViewController {

    @IBOutlet weak var IPtextField: UITextField!
    
    @IBAction func getIPButton(sender: AnyObject) {
        let url = NSURL(string: "https://www.stackoverflow.com")
        let request = NSURLRequest(URL: url!)
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) {(response, data, error) in
            print(NSString(data: data!, encoding: NSUTF8StringEncoding))
        }
        
        let connection = NSURLConnection(request: request, delegate:nil, startImmediately: true)
        
        
        func love(json: )
//        print()

    }
    
    
    @IBAction func tapped(sender: AnyObject) {
        IPtextField.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
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
