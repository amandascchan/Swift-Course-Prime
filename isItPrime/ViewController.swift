//
//  ViewController.swift
//  isItPrime
//
//  Created by Amanda Chan on 2016-09-01.
//  Copyright © 2016 BirdHouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
 
    @IBOutlet weak var resultsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonPressed(sender: AnyObject) {
        
        if let userEnteredStr = textField.text {
            
            let userEnteredInt = Int(userEnteredStr)
            
            if let resultInt = userEnteredInt {
       
                var i = 2
                var isPrime = true
                if resultInt > 0 {
                    
                    
                    while i < resultInt {
                        
                        if resultInt % i == 0 {
                            
                            isPrime = false
                            break
                            
                        }
                        i += 1
                        
                    }
                    
                    if isPrime && resultInt != 1{
                        resultsLabel.text = "\(resultInt) is prime!"
                    }
                    else if resultInt == 1 {
                        resultsLabel.text = "1 by definition cannot be a prime. How can we prime factorize every natural number if 1 is considered a prime?"
                       
                    }
                    else {
                         resultsLabel.text = "\(resultInt) is not prime!"
                    }
                    
                }
                else {
                    
                    resultsLabel.text = "Please enter a positive whole number"
                    
                }
                
            }
            else {
                resultsLabel.text = "Please enter a positive whole number"
            }
            
            
        }
      
      
        
   
        
        
    }
}

