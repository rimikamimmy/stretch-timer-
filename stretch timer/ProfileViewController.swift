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
        
      
        
        if saveData.object(forKey: "age") != nil{
            agetextField.text = (saveData.object(forKey: "age") as! String)
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
        
        
        
    }
  
    

    
    @IBAction func saveWord(_ sender: Any) {
        
        let age :String =  agetextField.text!
        saveData.set(age, forKey: "age")
        
        let height :String = heighttextFiled.text!
        saveData.set(height, forKey: "height")
        
        let weight :String = weighttextField.text!
        saveData.set(weight, forKey: "weight")
        
        let food1 :String = food1textField.text!
        saveData.set(food1, forKey: "food1")
        
        let food2 :String = food2textField.text!
        saveData.set(food2, forKey: "food2")
        
        let food3 :String = food3textField.text!
        saveData.set(food3, forKey: "food3")
        
        let alert = UIAlertController(
            title: "保存完了",
            message: "プロフィールが登録できました",
            preferredStyle : .alert
        )

        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
        handler: nil
        ))

    }
    
    @IBAction func back() {
//        self.dismiss(animated: true, completion: nil)
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }


    
    override func didReceiveMemoryWarning() {
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




