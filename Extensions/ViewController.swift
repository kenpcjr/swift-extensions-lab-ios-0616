//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let string = "Howdy dummy 100"
        
        let number = 8
        
        let fullName = "Kenneth Patrick Cooke Jr"
        
        
        print(string.whisper())
        
        print(string.shout())
        
        print(string.pigLatin)
        
        print(string.points)
        
        print(number.half())
        
        print(number.isDivisibleBy(2))
        
        print(number.squared)
        
        print(number.halved)
        
        print(string.unicornLevel)
        
        self.unicornLevelLabel.text = fullName.unicornLevel
        
    }
}


