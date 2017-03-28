//
//  ViewController.swift
//  Mentions
//
//  Created by magicmon on 03/27/2017.
//  Copyright (c) 2017 magicmon. All rights reserved.
//

import UIKit
import Mentions

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var mentionTextView: MentionTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mentionTextView.mentionText = "test[test]"
        
        mentionTextView.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController {
    @IBAction func pressedConfirm(_ sender: UIButton) {
        textLabel.text = mentionTextView.text
    }
}

