//
//  ParseShit.swift
//  ParseFun
//
//  Created by Vince on 7/4/16.
//  Copyright © 2016 Vince. All rights reserved.
//

import Foundation
import Parse



class ParseShit {
    
    static func login() {
        
        let configuration = ParseClientConfiguration {
            $0.applicationId = "myPlayground"
            $0.server = "https://vince-playground-server.herokuapp.com/parse"
        }
        
        Parse.initializeWithConfiguration(configuration)
        
        PFUser.logInWithUsernameInBackground("vince", password: "ismyname")
    }
    
    
    
    static func sendMessage(theMessage: String) {
        
        let message = PFObject(className: "Messages")
        
        message["theMessage"] = theMessage
        
        message.saveInBackground()
    }
    
    static func getMessages(callback: ([String]) -> Void) {
        
        var messys: [String] = []
        let query = PFQuery(className: "Messages")
        
        query.findObjectsInBackgroundWithBlock { (responses, error) in
            
            for message in responses! {
                
                messys.append(String(message["theMessage"]))
            }

            callback(messys)
        }
    }
    
    static func getMessageQueries(callback: ([PFObject]) -> Void) {
        
        let query = PFQuery(className: "Messages")
    
        
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            callback(objects!)
        }
    }
}
