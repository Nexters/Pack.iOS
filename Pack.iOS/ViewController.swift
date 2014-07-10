//
//  ViewController.swift
//  Pack.iOS
//
//  Created by Rangken on 2014. 7. 10..
//  Copyright (c) 2014년 PackYourTips. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let manager = AFHTTPRequestOperationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //manager.responseSerializer.acceptableContentTypes = NSSet().setByAddingObject("text/html");
        manager.GET("http://api.dyourbody.com/ping.json",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                println("RESPONSE: " + responseObject.description)
            },
            failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                println("Error: " + error.localizedDescription)
            })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

