//
//  ViewController.swift
//  ViewToView
//
//  Created by WillowRivers on 16/10/20.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var toBBtn : UIButton! ;
    var toCBtn : UIButton! ;
    var timer1 : Timer? ;
    var count : Int = 1 ;
    var nagationbar : UINavigationBar! ;
    var Label : UILabel! ;
    override func viewDidLoad() {
        super.viewDidLoad() ;
     
        self.navigationItem.title = "A" ;
        Label = UILabel(frame: CGRect(x: 20, y: 200, width: 300 , height: 80)) ;
        
        
        toBBtn = UIButton(frame: CGRect(x: 10 , y: 100 , width: 85 , height: 50)) ;
        toCBtn = UIButton(frame: CGRect(x: 100 , y: 100, width: 85 , height: 50)) ;
        toBBtn.setTitle("toViewB", for: .normal) ;
        toCBtn.setTitle("toViewC", for: .normal) ;
        
        toBBtn.backgroundColor = UIColor.red ;
        toCBtn.backgroundColor = UIColor.blue ;
        
        toBBtn.addTarget(self , action: #selector(ViewController.toB), for: .touchUpInside) ;
        toCBtn.addTarget(self , action: #selector(ViewController.toC), for: .touchUpInside) ;
        
       // self.navigationController?.isNavigationBarHidden = false ;
        view.addSubview(toBBtn) ;
        view.addSubview(toCBtn) ;
        view.addSubview(Label) ;
       // timer1 = Timer.scheduledTimer(withTimeInterval: 1 , repeats: true, block: {_ in self.upDateLabel() ; })
        //addTime() ;
        //timer1 = Timer.scheduledTimer(withTimeInterval: 1 , repeats: true, block: {_ in print("AviewController time is using")})
      //  timer1 = Timer(timeInterval: 1 , repeats: true , block: { _ in  self.upDateLabel() ; }) ;
        timer1 = Timer(timeInterval: 1 , target: self , selector: #selector(ViewController.upDateLabel) , userInfo: nil , repeats: true) ;
       //timer1?.fireDate = NSDate.distantPast ;
       RunLoop.current.add(timer1! , forMode: .commonModes)
    }
    
    func push() -> Void
    {
        nagationbar.pushItem(self.makeNav() , animated: true) ;
        self.count += 1 ;
        print(" after push Count is \(self.count)")
    }
    
    func pop() -> Void
    {
        if self.count > 2
        {
            nagationbar.popItem(animated: true) ;
            self.count -= 1 ;
        }
        else
        {
            print("无内容可出") ;
        }
        print(" after pop Count is \(self.count)")
    }
    
    func makeNav() -> UINavigationItem
    {
        let navItem = UINavigationItem(title: "the " + String(count) + "th navaigationBar") ;
        let leftBarBtn = UIBarButtonItem(title: "push" , style: .plain , target: self , action: #selector(ViewController.push)) ;
        let rightBarBtn = UIBarButtonItem(title: "pop", style: .plain , target: self , action: #selector(ViewController.pop)) ;
        navItem.leftBarButtonItem = leftBarBtn ;
        navItem.rightBarButtonItem = rightBarBtn ;
        return navItem ;
    }
    
    func addTime() -> Void
    {
      timer1 = Timer.scheduledTimer(withTimeInterval: 2 , repeats: true, block: {_ in print("AviewController time is using")})
    }
    
    
    func toB () -> Void {
        print("use toB func") ;
        self.timer1?.fireDate = Date.distantFuture ;
        
        //self.timer1?.invalidate() ;
        //self.timer1 = nil ;
        //print("timer1 is :\(self.timer1) ") ;
      //self.timer1？.invalidate() ;
       //self.timer1？ = nil ;
   //  self.navigationController?.pushViewController(BViewController(), animated: true) ;
        
        //self.navigationController?.present(BViewController() , animated: true , completion: {self.timer1.invalidate() ;})
    }
    
    
    
    func toC() -> Void
    {
        // self.navigationController?.pushViewController(CViewController(), animated: true) ;
        self.Label.text = String(100) ;
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    override func viewWillAppear(_ animated: Bool) {
       // self.addTime();
        print("use viewWillAppear func") ;
        self.timer1?.fireDate = Date.distantPast ;//启动
        //self.timer1?.fireDate = Date.distantFuture ;
    }
    
    override func viewDidDisappear(_ animated: Bool)
    {
        print("use viewDidDisappear function")
        self.timer1?.fireDate = Date.distantFuture ; //暂停
    }
    */
    func upDateLabel() -> Void {
        self.Label.text = String(self.count) ;
        print("now count is \(count)") ;
        count += 1 ;
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil , bundle: nibBundleOrNil) ;
        self.tabBarItem = UITabBarItem(title: "A", image: UIImage(named : "img.png") , tag: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder) ;
    }
}
