//
//  ViewController.swift
//  study
//
//  Created by 石津恭輔 on 2017/04/08.
//  Copyright © 2017年 石津恭輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var msg3 = "ハロー"
    
    @IBAction func toBack(_ sender: AnyObject) {
        view.backgroundColor = UIColor.brown
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ハローワールド")
        let theName = "太郎"
        let theNAME = "次郎"
        print(theName)
        print(theNAME)
        
        let msg1 = "こんにちわ"
        let msg2 = "ありがとう"
        let msg3 = "さようなら"
        
        let ans = 14+25+36
        print(ans)
        
        print(msg1,msg2,msg3)
        
        print("blue","green" , separator:"+",terminator:"、")
        print("yellow",terminator:"、")
        print("red")
        
        let name:String = "田中"
        let width:Int = 56 ,height:Int = 75
        print(name)
        print(width)
        print(height)
        
        let rate:Double
        let price:Double
        rate = 1.02
        price = 2500 * rate
        print(price)
        var name2:String = "ビジター"
        var level:Int = 1,point:Int = 10
        
        name2 = "鈴木"
        point = 50
        print(level)
        print(name2)
        print(point)
        
        var kokugo:Int
        var sansu:Int
        var goukei:Int
        kokugo = 56
        sansu = 67
        goukei = kokugo + sansu
        print(goukei)
        
        let tax = 0.08
        var count = 0
        count = 1
        print(tax,count)
        print(msg3)
        hello()
        world()
        kuji()
        
        //キャスト
        let kosu = 5
        let tanka = 2300
        let prince2 = Double(tanka*kosu) * (1 + tax)
        print(prince2)
        
        let subject = "理科"
        let point2 = 82
        let result = subject + String(point2) + "点"
        print(result)
        
        let product = ("Swift", 2013)
        
        var guest:(String,String,Int)
        guest = ("大重","おおしげ", 123)
        print(product)
        print(guest)
        
        let data = (1000,80)
        
        let (t1,t2) = data
        let kingaku = t1 + t2
        print(kingaku)
        
        let (price2,_) = data
        print(price2)
        
        print(data.0 + data.1)
        
        var user = ("鈴木" ,29)
        user.1 = 30
        print(user)
        
        //ラベル付きタプる
        var user1:(name:String,age:Int,isPass:Bool)
        user1.name = "高田"
         user1.age = 23
         user1.isPass = true
        print(user1)
        
        let a = 1+3*2
        let b = 10/(4-2)
        let c = 5%3
        let d = -11%4
        
        print(a,b,c,d)
        
        let ans2 = 3 * (10/4)
        print(ans2)
        
        let aa = true
        let bb = false
        
        let and = aa&&bb
        let or = aa||bb
        let not = !aa
        
        print(and,or,not)
        
        var aaa = 5
        let bbb = 10
        aaa *= bbb + 2
        
        print(aaa)
        
        let aaaa = arc4random_uniform(100)
        let bbbb = arc4random_uniform(100)
        
        let bigger = (aaaa>bbbb) ? aaaa:bbbb
        print("aaaaは\(aaaa) bbbbは\(bbbb) biggerは\(bigger)")
        
        //整数の範囲
        let rangeInt = -5..<5
        print(rangeInt.contains(-3))
        print(rangeInt.contains(2))
        print(rangeInt.contains(5))
        print("-----------")
        
        let rangeDouble = 0.0...1.0
        print(rangeDouble.contains(0.1))
        print(rangeDouble.contains(1.0))
        print(rangeDouble.contains(1.5))
        print("-----------")
        
        for i in (1..<5){
        print("\(i)回目")
        }
        //TODO
        //let RGB:Unit32 = 0x40E0D0
        
        let sugaku = arc4random_uniform(101)
         let eigo = arc4random_uniform(101)
        if sugaku >= 50{
            if eigo >= 60{
                print("合格おめでと")
            }else{
                print("残念、不合格")
            }
        }else{
            print("残念、不合格")
        }
        print("数学\(sugaku)点,英語\(eigo)点")
    }
    
    func hello() {
        let lang = "Swift"
        let msg = "ハロー" + lang
        print(msg)
    }
    func world() {
        let msg = "ワールド"
        print(msg)
    }
    func kuji() {
        let num = arc4random_uniform(10)+1
        
        if num>=7 {
            let msg = "あたり"
            print(msg)
        }else{
            let msg = "はずれ"
            print(msg)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

