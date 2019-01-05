//
//  ViewController.swift
//  BullsEye
//
//  Created by Ganesha Danu on 05/01/19.
//  Copyright © 2019 Ganesha Danu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(
            title: "Hello World",
            message: "SWIFT IS DABEST",
            preferredStyle: .alert
        );
        
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        );
        
        alert.addAction(action);
        present(alert, animated: true, completion: nil);
    }
}

