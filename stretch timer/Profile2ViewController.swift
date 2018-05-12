//
//  Profile2ViewController.swift
//  stretch timer
//
//  Created by Rimika Inoguchi on 2018/05/13.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class Profile2ViewController: UIViewController {

    @IBOutlet var ningen2ImageView: UIImageView!
    
    @IBOutlet var modoru2button: UIButton!
    
    @IBOutlet var age2Label: UILabel!
    
    @IBOutlet var height2Label: UILabel!
    
    @IBOutlet var weight2Label: UILabel!
    
    @IBOutlet var age2textField: UITextField!
    
    @IBOutlet var height2textFiled: UITextField!
    
    @IBOutlet var weight2textField: UITextField!
    
    @IBOutlet var tabemonoLabel: UILabel!
    
    @IBOutlet var tabemono1textField: UITextField!
    
    @IBOutlet var tabemono2textField: UITextField!
    
    @IBOutlet var tabemono3textField: UITextField!
    
    @IBOutlet var savebutton: UIButton!
    

    let saveData = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        age2textField.placeholder = "テキストを入力"
        height2textFiled.placeholder = "テキストを入力"
        weight2textField.placeholder = "テキストを入力"
        tabemono1textField.placeholder = "テキストを入力"
        tabemono2textField.placeholder = "テキストを入力"
        tabemono3textField.placeholder = "テキストを入力"
        
        
        
        if saveData.object(forKey: "age") != nil{
            age2textField.text = (saveData.object(forKey: "age") as! String)
        }
        
        
        if saveData.object(forKey: "height") != nil{
            height2textFiled.text = (saveData.object(forKey: "height") as! String)
        }
        
        if saveData.object(forKey: "weight") != nil{
            weight2textField.text = (saveData.object(forKey: "weight") as! String)
        }
        
        if saveData.object(forKey: "food1") != nil{
            tabemono1textField.text = (saveData.object(forKey: "food1") as! String)
        }
        
        if saveData.object(forKey: "food2") != nil{
            tabemono2textField.text = (saveData.object(forKey: "food2") as! String)
        }
        
        if saveData.object(forKey: "food3") != nil{
            tabemono3textField.text = (saveData.object(forKey: "food3") as! String)
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveWord(_ sender: Any) {
        
        let age :String =  age2textField.text!
        saveData.set(age, forKey: "age")
        
        let height :String = height2textFiled.text!
        saveData.set(height, forKey: "height")
        
        let weight :String = weight2textField.text!
        saveData.set(weight, forKey: "weight")
        
        let food1 :String = tabemono1textField.text!
        saveData.set(food1, forKey: "food1")
        
        let food2 :String = tabemono2textField.text!
        saveData.set(food2, forKey: "food2")
        
        let food3 :String = tabemono3textField.text!
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

    

        func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
            
            textField.resignFirstResponder()
            return true
        }
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
}
