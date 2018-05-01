//
//  GraphViewController.swift
//  stretch timer
//
//  Created by Rimika Inoguchi on 2018/04/28.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit
//
class GraphViewController: UIViewController {
    //
    @IBOutlet var BarChartView: UIBarChartView!
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        var months: [String] = []
        
        //保存する倉庫
        let defaults = UserDefaults.standard
        
        defaults.set(months, forKey:"month")
        
        if((defaults.object(forKey: "month")) != nil){
            
            let objects = defaults.object(forKey: "month") as? NSArray
            
            
            var monthsString:AnyObject
            
            for monthsString in objects!{
                
                months.append((monthsString as! NSString) as String)
            }
        }
        
    }
    

    
    
    
    
    // Do any additional setup after loading the view.
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
