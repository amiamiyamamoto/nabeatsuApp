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
        displayImg(img: nabeatsu2)
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
        
        //5の倍数　5の付く数字かどうかの判定
        if count % 5 == 0 || "\(count)".contains("5") {
            flag5 = true
        }

        if flag3 {
            displayImg(img: nabeatsu3)
        } else if flag5 {
            displayImg(img: nabeatsu5)
        } else if count % 3 == 1 {
            displayImg(img: nabeatsu1)
        } else {
            displayImg(img: nabeatsu2)
        }
    }
    
    //画像のサイズを取得して、適正な縮尺で表示させるメソッド
    func displayImg(img:UIImage){
        
        //画面サイズを取得する
        let screenWidth = self.view.bounds.width
        let screenHeight = self.view.bounds.height

        //画像のサイズを取得する
        let imgWidth = img.size.width
        let imgHeight = img.size.height

        //画像が画面横幅7割になるよう縮尺を取得する
        let scare = (screenWidth / imgWidth) * 0.7

        //画像サイズを変更する
        let rect = CGRect(x: 0, y: 0, width:  imgWidth * scare, height: imgHeight * scare)
        imageView.frame = rect

        //画像位置を変更する
        imageView.center = CGPoint(x: screenWidth/2, y: screenHeight * 0.6)
        
        //画像を表示させる
        imageView.image = img
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

