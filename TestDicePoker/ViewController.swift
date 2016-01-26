//
//  ViewController.swift
//  TestDicePoker
//
//  Created by Utilisateur invité on 19/01/2016.
//  Copyright © 2016 Utilisateur invité. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func testPenis(sender: AnyObject) {
        performSegueWithIdentifier("yolo", sender: self)
    }

}

