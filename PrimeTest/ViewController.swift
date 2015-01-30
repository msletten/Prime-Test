//
//  ViewController.swift
//  PrimeTest
//
//  Created by Mat Sletten on 9/23/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emptyTextField: UITextField!
    @IBOutlet weak var emptyLabel: UILabel!
    @IBAction func checkButtonPressed(sender: AnyObject)
    {
        var primeConfirmed = true
        var numberGuess = emptyTextField.text.toInt()
        
        if (numberGuess != nil)
        {
            if (numberGuess < 1)
            {
                emptyLabel.text = "Please enter a positive number"
            }
            else
            {
                if (numberGuess == 1)
                {
                    emptyLabel.text = "1 is not a prime number"
                }
                else
                {
                    for var primeCheck = 2; primeCheck < numberGuess; ++primeCheck
                    {
                        if (numberGuess! % primeCheck == 0)
                        {
                            //number is not prime
                            primeConfirmed = false
                        }
                    }
                    if (primeConfirmed == true)
                    {
                        emptyLabel.text = "It is Prime!"
                    }
                    else
                    {
                        emptyLabel.text = "It is not prime"
                    }
                }
                
                
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

