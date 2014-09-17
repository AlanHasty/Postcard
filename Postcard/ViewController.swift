//
//  ViewController.swift
//  Postcard
//
//  Created by Alan Hasty on 9/10/14.
//  Copyright (c) 2014 Alan Hasty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var capturedMessage: UILabel!
    @IBOutlet weak var toEmailAddress: UITextField!
    @IBOutlet weak var messageToSend: UITextField!
    
    @IBOutlet weak var messageFor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendPostcard(sender: UIButton) {
        capturedMessage.text = messageToSend.text
        messageToSend.resignFirstResponder()
        capturedMessage.hidden = false
        messageFor.text = toEmailAddress.text
        messageFor.hidden = false
        toEmailAddress.text = ""
        messageToSend.text = ""
        
    }
}
