//
//  DViewController.swift
//  ViewToView
//
//  Created by WillowRivers on 16/10/20.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class DViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "DView" ;
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back" , style: .done , target: self, action: #selector(DViewController.back)) ;
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back😊", style: .plain , target: self , action: "back") ;
        let imgV = UIImageView(frame: view.frame) ;
        imgV.image = UIImage(named: "D.jpg") ;
        view.addSubview(imgV) ;
        // Do any additional setup after loading the view.
    }
    
    func back() -> Void {
        self.navigationController?.popViewController(animated: true) ;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
