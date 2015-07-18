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

    @IBOutlet weak var plusB: UIButton!
    @IBOutlet weak var minusB: UIButton!
    @IBOutlet weak var kakeruB: UIButton!
    @IBOutlet weak var waruB: UIButton!
    @IBOutlet weak var equalB: UIButton!
    @IBOutlet weak var ACB: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        plusB.tag = 1
        minusB.tag = 2
        kakeruB.tag = 3
        waruB.tag = 4
        equalB.tag = 5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //数字ボタン
    @IBAction func selectNumberButton(sender :UIButton){
        if sender.tag == 1000{
            number = number * sender.tag / 10
            label.text = String(number)
        }else{
            number = number * 10 + sender.tag - 100
            label.text = String(number)
        }
    }
    
    @IBAction func otherB(sender :UIButton){
        switch sender.tag{
        case 1:
            label.text = "+"
            operation = 1
            number1 = number
        case 2:
            label.text = "-"
            operation = 2
            number1 = number
        case 3:
            label.text = "×"
            operation = 3
            number1 = number
        case 4:
            label.text = "÷"
            operation = 4
            number1 = number
        
        default:
            break
        
        }
    }
    
    //数字以外のボタン
    
    
    
    /*
    @IBAction func plus(){
        label.text = "+"
        
        operation = 1
        number1 = number
        number = 0
    }
    @IBAction func different(){
        label.text = "-"
        
        operation = 2
        number1 = number
        number = 0
    }
    @IBAction func kakeru(){
        label.text = "×"
        
        operation = 3
        number1 = number
        number = 0
    }
    @IBAction func waru(){
        label.text = "÷"
        
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
*/

}

