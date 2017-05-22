//
//  ViewController.swift
//  ping pang
//
//  Created by s20151104691 on 17/4/26.
//  Copyright © 2017年 ltx. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
    UIImagePickerControllerDelegate,
    UINavigationControllerDelegate{

    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var text2: UILabel!
    @IBOutlet weak var text3: UILabel!
    @IBOutlet weak var text4: UILabel!
    var a:Int = 0;
    var b:Int = 0;
    var c:Int = 0;
    var d:Int = 0;
    var dlg:Int = 0;
    var flagA:Int = 0;
    var flagB:Int = 0;
    @IBAction func photo1(_ sender: Any) {
        if(dlg==0){
            flagA=1
            flagB=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                //初始化图片控制器
                let picker = UIImagePickerController()
                //设置代理
                picker.delegate = self
                //指定图片控制器类型
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                //弹出控制器，显示界面
                self.present(picker,animated: true,
                    completion: {
                    ()->Void in
                })
                
            }else{
                print("读取相册错误")
                }
           }
    }
    @IBOutlet weak var photoone: UIImageView!
    @IBOutlet weak var phototwo: UIImageView!

    
    @IBAction func photo2(_ sender: Any) {
        if(dlg==0){
            flagA=0
            flagB=1
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                //初始化图片控制器
                let picker = UIImagePickerController()
                //设置代理
                picker.delegate = self
                //指定图片控制器类型
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
                //弹出控制器，显示界面
                self.present(picker,animated: true,
                             completion: {
                                ()->Void in
                })
                
            }else{
                print("读取相册错误")
            }
        }

    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
            //查看inof对象
            print(info)
            //显示的图片
            let image:UIImage!
            //获取选择原因
        image=info[UIImagePickerControllerOriginalImage] as! UIImage
        if(flagA==1){
            photoone.image = image
        }
        else if(flagB==1){
            phototwo.image = image
          }
            //图片控制器退出
        picker.dismiss(animated: true, completion: {
            () -> Void in
            })
       }
    
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
        if(c == 3){
            let alertVC = UIAlertController(title: "提示", message: "甲胜！！！", preferredStyle: UIAlertControllerStyle.alert)
            a=0;
            b=0;
            c=0;
            d=0;
            text1.text=("\(c)");
            text2.text=("\(d)");
            text3.text=("\(a)");
            text4.text=("\(b)");
            let acSure = UIAlertAction(title: "确定", style: UIAlertActionStyle.destructive) { (UIAlertAction) -> Void in
                print("click Sure")
                }
            let acCancel = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel) {
                (UIAlertAction) -> Void in
                print("click Cancel")
             }
           alertVC.addAction(acSure)
           alertVC.addAction(acCancel)
        self.present(alertVC, animated: true, completion: nil)
        }}
    @IBAction func subtraction(_ sender: Any){
        a = Int(text1.text!)!
        if(a>0){
            a = a - 1;
        }
        text1.text = ("\(a)");
    }
    @IBAction func rightadd(_ sender: Any){
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
        if(d == 3){
            let alertVC = UIAlertController(title: "提示", message: "乙胜！！！", preferredStyle: UIAlertControllerStyle.alert)
            a=0;
            b=0;
            c=0;
            d=0;
            text1.text=("\(c)");
            text2.text=("\(d)");
            text3.text=("\(a)");
            text4.text=("\(b)");
            let acSure = UIAlertAction(title: "确定", style: UIAlertActionStyle.destructive) { (UIAlertAction) -> Void in
                print("click Sure")
            }
            let acCancel = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel) {
                (UIAlertAction) -> Void in
                print("click Cancel")
            }
            alertVC.addAction(acSure)
            alertVC.addAction(acCancel)
            self.present(alertVC, animated: true, completion: nil)
        }
    }
    @IBAction func rightsubtraction(_ sender: Any) {
        b = Int(text2.text!)!
        if(b>0){
            b = b - 1;
        }
        text2.text = ("\(b)");
    }
    @IBAction func change(_ sender: Any) {
        let image = phototwo.image
        phototwo.image = photoone.image
        photoone.image = image
        let text = text2.text
        text2.text = text1.text
        text1.text = text
        let number = text4.text
        text4.text = text3.text
        text3.text = number
        let e = c
        c = d
        d = e
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

