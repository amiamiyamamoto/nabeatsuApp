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
    var nabeatsu5:UIImage! = UIImage(named:"5")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //画像を表示させる
        imageView.image = nabeatsu2
    }

    //ボタンを押したときの処理
    @IBAction func countUp(_ sender: Any) {
        
        var flag3:Bool = false
        var flag5:Bool = false
        
        count += 1
        countLabel.text = "count\(count)"

        //3の倍数　3の付く数字かどうかの判定
        if count % 3 == 0 || "\(count)".contains("3") {
            flag3 = true
        }
        if count % 5 == 0 || "\(count)".contains("5") {
            flag5 = true
        }

        if flag3 {
            imageView.image = nabeatsu3
        } else if flag5 {
            imageView.image = nabeatsu5
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

