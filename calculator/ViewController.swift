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
        
        // Mainstoryboardに出ているボタンをタグで取得する
        // 番号の0が使えないため、100番から109番までを0〜9に対応させることで、conflictを防いでいる
        // なお、0番目のボタンが作られていなかったので、1〜9までしかfor文を回していない
        for i in 1..<10 {
            var btn: UIButton = self.view.viewWithTag(100 + i) as! UIButton
            btn.addTarget(self, action: "selectedButtonAction:", forControlEvents: .TouchUpInside)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 各ボタンの処理をここにまとめて書く
    // senderにはactionが登録されたボタンが格納される
    func selectedButtonAction(sender: UIButton) {
        number = number * 10 + (sender.tag - 100)
        label.text = String(number)
    }
    
    // 演算子もタグで取得して、actinを起動時に追加してみましょう。
    // ただし、関数は1つだけで、名前はoperationとしておきましょう。
    // switch文を使うこと。
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

