//
//  CViewController.swift
//  ViewToView
//
//  Created by WillowRivers on 16/10/20.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class CViewController: UIViewController {
    var toDButton : UIButton! ;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CView" ;
        
        toDButton = UIButton(frame: CGRect(x: 20, y: 100, width: 200, height: 100)) ;
        toDButton.setTitle("ToDView", for: .normal) ;
        toDButton.backgroundColor = UIColor.brown ;
        toDButton.addTarget(self , action: "animation", for: .touchDown) ;
        
        let imgV = UIImageView(frame: view.frame) ;
        imgV.image = UIImage(named: "C.jpg") ;
        
        let imgV3 = UIImageView(frame: view.frame) ;
        imgV3.image = UIImage(named: "bbb.jpg") ;
        
        self.view.addSubview(imgV) ;
        self.view.addSubview(imgV3) ;
        self.view.addSubview(toDButton) ;
        // Do any additional setup after loading the view.
    }
    func animation() -> Void {
        UIView.beginAnimations("animation", context: nil) ;
        UIView.setAnimationDuration(5.0) ;
        UIView.setAnimationTransition(UIViewAnimationTransition.curlUp , for: self.view , cache: true) ;
        //UIView.setAnimationCurve(UIViewAnimationCurve.easeInOut) ;
        UIView.setAnimationCurve(UIViewAnimationCurve.easeInOut) ;
        self.view.exchangeSubview(at: 2 , withSubviewAt: 1)
        UIView.commitAnimations() ;

    }
    func toDViewF() -> Void {
        
        
        /*
        let transition = CATransition() ;
        transition.duration = 5.0 ;
        transition.type = kCATransitionReveal ;
        transition.subtype = kCATransitionFromTop ;
        self.view.layer.add(transition , forKey: "animation") ;
         */
        self.navigationController?.pushViewController(DViewController() , animated: true) ;
            }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil , bundle: nibBundleOrNil) ;
        self.tabBarItem = UITabBarItem(title: "C", image: UIImage(named : "img.png") , tag: 3)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(nibName: nil , bundle: nil) ;
    }


}
