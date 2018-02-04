//
//  ViewController.swift
//  Prime-Numbers
//
//  Created by Harry Crank on 04/02/2018.
//  Copyright © 2018 Harry Crank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func isItPrime(_ sender: Any) {
        
        if let number = Int(numberTextField.text!) {
        
            var isPrime = true
        
            if number == 1 {
            
                isPrime = false
            
            }
        
            if number != 2 && number != 1 {
            
                for i in 2 ..< number {
                
                    if number % i == 0 {
                    
                        isPrime = false
                    
                    }
                
                }
            
            }
        
            if isPrime {
                resultLabel.text = "\(number) is prime!"
            } else {
                resultLabel.text = "\(number) is not prime"
            }
        } else {
            resultLabel.text = "Please enter a whole number!"
        }
    }
}

