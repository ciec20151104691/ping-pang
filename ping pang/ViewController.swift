//
//  ViewController.swift
//  ping pang
//
//  Created by s20151104691 on 17/4/26.
//  Copyright © 2017年 ltx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var text2: UILabel!
    @IBOutlet weak var text3: UILabel!
    @IBOutlet weak var text4: UILabel!
    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    @IBOutlet weak var number3: UILabel!
    @IBOutlet weak var number4: UILabel!
    var a:Int = 0;
    var b:Int = 0;
    var c:Int = 0;
    var d:Int = 0;
    @IBAction func add(_ sender: Any) {
        a = a + 1;
        text1.text = ("\(a)");
        if(a >= 11 && a>=2+b){
            c = c+1;
            text3.text = ("\(c)");
            a = 0;
            b = 0;
            text1.text=("\(a)");
            text2.text = ("\(b)");
        }
    
    }
    @IBAction func subtraction(_ sender: Any) {
        a = Int(text1.text!)!
        if(a>0){
            a = a - 1;
        }
        text1.text = ("\(a)");
    }
    @IBAction func rightadd(_ sender: Any) {
        b = b + 1;
        text2.text = ("\(b)");
        if(b >= 11 && b>=2+a){
            d = d+1;
            text4.text = ("\(d)");
            a = 0;
            b = 0;
            text1.text=("\(a)");
            text2.text = ("\(b)");
        }
        

    }
    @IBAction func rightsubtraction(_ sender: Any) {
        b = Int(text2.text!)!
        if(b>0){
            b = b - 1;
        }
        text2.text = ("\(b)");
    }
    @IBAction func add2(_ sender: Any) {
        a = a + 1;
        number1.text = ("\(a)");
        if(a >= 11 && a>=2+b){
            c = c+1;
            number3.text = ("\(c)");
            a = 0;
            b = 0;
            number1.text=("\(a)");
            number2.text = ("\(b)");

        }}
    @IBAction func subtraction2(_ sender: Any) {
        a = Int(number1.text!)!
        if(a>0){
            a = a - 1;
        }
        number1.text = ("\(a)");
    }
    @IBAction func rightadd2(_ sender: Any) {
        b = b + 1;
        number2.text = ("\(b)");
        if(b >= 11 && b>=2+a){
            d = d+1;
            number4.text = ("\(d)");
            a = 0;
            b = 0;
            number1.text = ("\(a)");
            number2.text = ("\(b)");
        }}
    @IBAction func rightsubtraction2(_ sender: Any) {
        b = Int(number2.text!)!
        if(b>0){
            b = b - 1;
        }
        number2.text = ("\(b)");
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

