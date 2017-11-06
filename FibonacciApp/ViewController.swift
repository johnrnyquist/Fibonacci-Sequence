//
//  ViewController.swift
//  FibonacciApp
//
//  Created by John Nyquist on 11/4/17.
//  Copyright © 2017 Nyquist Art + Logic LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
   
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var includeZeroLabel: UILabel!
    
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    
    @IBOutlet weak var includeZeroSwitch: UISwitch!
    
    @IBAction func updateFibonacciSequence(){
        let includeZero = includeZeroSwitch.isOn
        if includeZeroSwitch.isOn {
            numberOfItemsSlider.maximumValue = 94
        } else {
            numberOfItemsSlider.maximumValue = 93
            if numberOfItemsSlider.value == 94 {
                numberOfItemsSlider.value = 93
            }
        }
        
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt(numberOfItemsSlider.value), includesZero: includeZero)
        textView.text = String(describing: fibonacciSequence.values)
        numberOfItemsLabel.text = String(UInt(numberOfItemsSlider.value))
        includeZeroLabel.text = includeZeroSwitch.isOn ? "Yes" : "No"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.updateFibonacciSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

