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
        
        //第２章()
        第3章()
        
    }
    func 第3章()  {
        let number = dice()
        print(number)
        harf(num: 25)
        harf(num: 9)
        harf(num: 12)
        
        let price = price0()
        let price2 = price1(ninzu: 5)
        let price3 = price4(ninzu: 1300, tanka: 5)
        
        print(price)
        print(price2)
        print(price3)
        
        let greeting1 = greeting()
        let greeting2 = greeting(who: "加藤様")
        print(greeting1)
        print(greeting2)
        
        let addFunc = {(a:Int, b:Int) -> Int in
            return a + b
        }
        
        let result = addFunc(1,2)
        print(result)  // 3
        
        let ex1 = price5(tanka:1000)
        let ex2 = price5(tanka:1000,kosu:2)
        let ex3 = price5(tanka:2500,souryou:1500)
        let ex4 = price5(tanka:1000,kosu: 5, souryou: 0)
        print(ex1)
        print(ex2)
        print(ex3)
        print(ex4)
        
        let result2 = testResult(kokugo: 80, sugaku: 68, eigo: 72)
        print(result2.total)
        print(result2.average)
        let myBmi = bmi(weight: 56.0, height: 172.6)
        print(myBmi)
        
        print(30,16.5)
        
        print(makeTuple(value: "abc"))
        print(makeTuple(value: 123))
        
        let mCalc = calc(a: b: )
        print(mCalc(1,2))
        print(message(user: "加藤", magFunc: hello))
        print(message(user: "加藤", magFunc: bye))
        
        let age10 = priceFunc(age: 10)
        let age18 = priceFunc(age: 18)
        
        print(age10(1))
        print(age18(2))
        
        print(myClo(1,2))
        
        let numbers = [4,7,2,9]
        
        let array1 = numbers.map { (v:Int) -> Int in
            return v*2
        }
        print(array1)
        
        let array3 = numbers.map { v in v*2}
        print(array3)
        
        let array4 = numbers.map {$0*2}
        print(array4)
        
        let colors = ["GREEN","BLUE","RED"]
        let smallColor = colors.map { str in str.lowercased()}
        
        print(colors)
        print(smallColor)
    }
    
    
    let myClo = {(a:Int,b:Int) -> Int in
        return a + b
    }
    
    func priceFunc(age:Int) -> (Int) -> Int {
        if age<16 {
            return kids
        }else{
            return adult
        }
    }
    
    func kids(kazu:Int) -> Int {
        return 400*kazu
    }
    func adult(kazu:Int) -> Int {
        return 600*kazu
    }
    
    func hello(user:String) -> String {
        return ("\(user)さんこんにちわ")
    }
    func bye(user:String) -> String {
        return ("\(user)さんバイバイ")
    }
    
    func message(user:String,magFunc:(String)-> String) -> String {
        let msg = magFunc(user)
        return msg
    }
    
    func makeTuple<T>(value:T) -> (id:T,data:NSData) {
        let now = NSData()
        return (value,now)
    }
    
    func calc(a:Int,b:Int) -> Int {
        return a+b
    }
    func calc(c:Int,d:Int) -> Int {
        return c*d
    }
    
    func calc(a:Int,b:Int,c:Int) -> Int {
        return (a+b)*c
    }
    
    func triangleArea(_ weight:Double,_ height:Double) -> Double {
        let result = weight*height/2
        return result
    }
    
    func bmi(weight kg:Double,height cm:Double) -> Double {
        if cm == 0 { return -1 }
        
        var result = kg/pow(cm*0.01,2)
        result = round(result*10)/10
        return result
        
    }
    func testResult(kokugo:Int,sugaku:Int,eigo:Int) -> (total:Int,average:Double) {
        let total = kokugo+sugaku+eigo
        var ave = Double(total)/3
        ave = round(ave*10)/10
        return (total,ave)
    }
    
    func price5(tanka:Int,kosu:Int = 1,souryou:Int = 250) -> Int {
        let result = tanka * kosu + souryou
        return result
    }
    func greeting(who:String = "お客様") -> String {
        return who + ",こんにちわ"
    }
    
    func numbers(numbers:Double...)-> Double{
        
        var total:Double = 0;
        
        for num in numbers{
            total+=num
        }
        return total
    }
    func price0() -> Int {
        let ninzu = 3
        let  tanka = 1200
        let result = ninzu * tanka
        return result
        
    }
    func price1(ninzu:Int) -> Int {
        let  tanka = 1200
        let result = ninzu * tanka
        return result
        
    }
    
    func price4(ninzu:Int,tanka:Int) -> Int {
        let result = ninzu * tanka
        return result
        
    }
    
    func harf(num:Double) {
        defer {
            print("計算終了")
        }
        guard num>=10 else {
            //numが10以上でない時には終了
            return
        }
        let harfNum = num/2
        print("\(num)の半分は\(harfNum)")
        
    }
    
    func hello2() -> () {
        print("ハロー")
    }
    func dice() -> Int {
        let number = 1 + arc4random_uniform(6)
        return Int(number)
    }
    func 第２章(){
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
        
        //show2()
        let RGB: UInt32 = 0x40E0D0
        let red = (RGB & 0xFF0000) >> 16
        let green = (RGB & 0x00FF00) >> 8
        let blue = RGB & 0x0000FF
        print("red\(red),green\(green),blue\(blue)")
        let R = CGFloat(red)/255
        let G = CGFloat(green)/255
        let B = CGFloat(blue)/255
        
        view.backgroundColor = UIColor(red: R, green: G, blue: B, alpha: 1)
        
        let theColor = "green"
        
        switch theColor {
        case "red":
            print("赤と黄色は注意")
        case "green":
            print("緑は快適")
        case "gray":
            print("グレーは停止中")
        default:
            print("その他は順調")
        }
        print(theColor)
        
        for _ in 1...20{
            //０~49の乱数
            let num = arc4random_uniform(50)
            print("\(num)")
            
            switch num {
            case (10...15):
                print(":交換", terminator: "")
            case 20,(31...35),40:
                print(":再検査", terminator: "")
            default:
                print(":合格", terminator: "")
            }
            
        }
        
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

