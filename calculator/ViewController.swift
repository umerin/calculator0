//
//  ViewController.swift
//  calculator
//
//  Created by rin on 2015/07/11.
//  Copyright (c) 2015年 rin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number:Int = 0
    var number1:Int = 0
    var operation:Int = 0
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func select1(){
        number = number * 10 + 1
        label.text = String(number)
    }
    @IBAction func select2(){
        number = number * 10 + 2
        label.text = String(number)
    }
    @IBAction func select3(){
        number = number * 10 + 3
        label.text = String(number)
    }
    @IBAction func select4(){
        number = number * 10 + 4
        label.text = String(number)
    }
    @IBAction func select5(){
        number = number * 10 + 5
        label.text = String(number)
    }
    @IBAction func select6(){
        number = number * 10 + 6
        label.text = String(number)
    }
    @IBAction func select7(){
        number = number * 10 + 7
        label.text = String(number)
    }
    @IBAction func select8(){
        number = number * 10 + 8
        label.text = String(number)
    }
    @IBAction func select9(){
        number = number * 10 + 9
        label.text = String(number)
    }
    @IBAction func plus(){
        label.text = String(0)
        
        operation = 1
        number1 = number
        number = 0
    }
    @IBAction func different(){
        label.text = String(0)
        
        operation = 2
        number1 = number
        number = 0
    }
    @IBAction func kakeru(){
        label.text = String(0)
        
        operation = 3
        number1 = number
        number = 0
    }
    @IBAction func waru(){
        label.text = String(0)
        
        operation = 4
        number1 = number
        number = 0
    }
    @IBAction func equal() {
        if operation == 1 {
            label.text = String(number + number1)
        }else if operation == 2 {
            label.text = String(number - number1)
        }else if operation == 3 {
            label.text = String(number * number1)
        }else if operation == 4 {
            label.text = String(number / number1)
        }
    }
    @IBAction func ac() {
        number = 0
        number1 = 0
        operation = 0
        label.text = String(0)
    }


}

