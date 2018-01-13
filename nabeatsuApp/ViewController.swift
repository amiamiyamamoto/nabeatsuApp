//
//  ViewController.swift
//  nabeatsuApp
//
//  Created by s247 on 2018/01/11.
//  Copyright © 2018年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ボタンのタップ数を数える変数
    var count:Int = 0
    
    //カウントアップするラベル
    @IBOutlet weak var countLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //ボタンを押したときの処理
    @IBAction func countUp(_ sender: Any) {
        count += 1
        countLabel.text = "count\(count)"
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

