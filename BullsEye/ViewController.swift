//
//  ViewController.swift
//  BullsEye
//
//  Created by Ganesha Danu on 05/01/19.
//  Copyright © 2019 Ganesha Danu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var round = 0;
    var sliderVal: Int = 0;
    var targetValue: Int = 0;
    
    @IBOutlet weak var slider: UISlider!;
    @IBOutlet weak var targetLabel: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset();
    }
    
    func reset() {
        targetValue = Int.random(in: 0...100);
        sliderVal = 50;
        slider.value = 50;
        targetLabel.text = "\(targetValue)";
        self.round += 1;
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(
            title: "Hello World",
            message: "slider = \(self.sliderVal), target = \(self.targetValue)",
            preferredStyle: .alert
        );
        
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        );
        
        alert.addAction(action);
        present(alert, animated: true, completion: nil);
        targetValue = Int.random(in: 0...100);
        reset();
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        self.sliderVal = Int(slider.value.rounded());
    }
}

