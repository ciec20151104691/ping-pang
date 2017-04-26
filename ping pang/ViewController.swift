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

    @IBAction func add(_ sender: Any) {
        var text:Int = 0
        text = Int(text1.text!)!;
        text = text+1;
        text1.text = ("\(text)");
    }
    @IBAction func rightadd(_ sender: Any) {
        var text:Int = 0
        text = Int(text2.text!)!;
        text = text+1;
        text2.text = ("\(text)");
    }
    @IBAction func AC(_ sender: Any) {
        text1.text = ("0");
        text2.text = ("0");
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

