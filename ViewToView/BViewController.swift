//
//  BViewController.swift
//  ViewToView
//
//  Created by WillowRivers on 16/10/20.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class BViewController: UIViewController {
    var toDButton : UIButton! ;
   // var bViewParam : String! ;
    override func viewDidLoad() {
        super.viewDidLoad() ;
        self.view.backgroundColor = UIColor.white ;
        //self.title = "BView" ;
        
        toDButton = UIButton(frame: CGRect(x: 20, y: 100, width: 200, height: 100)) ;
        toDButton.setTitle("ToDView", for: .normal) ;
        toDButton.backgroundColor = UIColor.brown ;
        toDButton.addTarget(self , action: "toDViewF", for: .touchUpInside) ;
        
        self.view.addSubview(toDButton) ;
        //print("bViewParam is \(bViewParam)") ;
        // Do any additional setup after loading the view.
    }
    
    func toDViewF() -> Void {
        self.navigationController?.pushViewController(DViewController() , animated: true) ;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil , bundle: nibBundleOrNil) ;
        self.tabBarItem = UITabBarItem(title: "B", image: UIImage(named : "img.png") , tag: 2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder) ;
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
