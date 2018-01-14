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
    
    //UIImageViewを紐付ける
    @IBOutlet weak var imageView: UIImageView!
    
    //画像のインスタンスを作成
    var nabeatsu1:UIImage! = UIImage(named:"1")
    var nabeatsu2:UIImage! = UIImage(named:"2")
    var nabeatsu3:UIImage! = UIImage(named:"3")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //画像を表示させる
        imageView.image = nabeatsu1
    }

    //ボタンを押したときの処理
    @IBAction func countUp(_ sender: Any) {
        count += 1
        countLabel.text = "count\(count)"
        
        if count % 3 == 0 {
            imageView.image = nabeatsu3
        } else if count % 3 == 1 {
            imageView.image = nabeatsu1
        } else {
            imageView.image = nabeatsu2
        }
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

