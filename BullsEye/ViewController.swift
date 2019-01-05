//
//  ViewController.swift
//  BullsEye
//
//  Created by Ganesha Danu on 05/01/19.
//  Copyright © 2019 Ganesha Danu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var sliderVal: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(
            title: "Hello World",
            message: "\(self.sliderVal)",
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
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        self.sliderVal = Int(slider.value.rounded());
    }
}

