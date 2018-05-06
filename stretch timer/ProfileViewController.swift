//
//  ProfileViewController.swift
//  stretch timer
//
//  Created by Rimika Inoguchi on 2018/04/27.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var ningenImageView: UIImageView!
    
    @IBOutlet var modorubutton: UIButton!
    
    @IBOutlet var ageLabel: UILabel!
    
    @IBOutlet var heightLabel: UILabel!
    
    @IBOutlet var weightLabel: UILabel!
    
    @IBOutlet var agetextField: UITextField!
    
    @IBOutlet var heighttextFiled: UITextField!
    
    @IBOutlet var weighttextField: UITextField!
    
    @IBOutlet var foodLabel: UILabel!
    
    @IBOutlet var food1textField: UITextField!
    
    @IBOutlet var food2textField: UITextField!
    
    @IBOutlet var food3textField: UITextField!
    
    @IBOutlet var savebutton: UIButton!
    
    
    
    
    
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        agetextField.placeholder = "テキストを入力"
        heighttextFiled.placeholder = "テキストを入力"
        weighttextField.placeholder = "テキストを入力"
        food1textField.placeholder = "テキストを入力"
        food2textField.placeholder = "テキストを入力"
        food3textField.placeholder = "テキストを入力"
        
        
        
        
        
        
    }
    
    
    @IBAction func saveButtonTapped(){
        
        let saveData = UserDefaults.standard
        
        let profileArray  = saveData.array(forKey: "age")
        
        let textField = UITextField()
        
        
        
        
        if saveData.object(forKey: "age") != nil{
            agetextField.text = saveData.object(forKey: "age") as? String
        }
        
        if saveData.object(forKey: "height") != nil{
            heighttextFiled.text = (saveData.object(forKey: "height") as! String)
        }
        
        if saveData.object(forKey: "weight") != nil{
            weighttextField.text = (saveData.object(forKey: "weight") as! String)
        }
        
        if saveData.object(forKey: "food1") != nil{
            food1textField.text = (saveData.object(forKey: "food1") as! String)
        }
        
        if saveData.object(forKey: "food2") != nil{
            food2textField.text = (saveData.object(forKey: "food2") as! String)
        }
        
        if saveData.object(forKey: "food3") != nil{
            food3textField.text = (saveData.object(forKey: "food3") as! String)
        }
        
        
        func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            
            func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                
                
                textField.resignFirstResponder()
                return true
            }
            
        }
        
        
        
        
    }
    
    // Dispose of any resources that can be recreated.
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
}
