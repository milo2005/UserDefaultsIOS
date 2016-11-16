//
//  ViewController.swift
//  UserDefault
//
//  Created by Aplimovil on 11/1/16.
//  Copyright © 2016 Aplimovil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var info: UITextField!
    @IBOutlet var saved: UILabel!
    
    var userD:UserDefaults!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userD = UserDefaults()
        let txtInfo:String? = userD.object(forKey: "info") as! String?
        
        if txtInfo != nil {
            saved.text = txtInfo
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func save(_ sender: AnyObject) {
        userD.set(info.text, forKey: "info")
        
        
    }

}

