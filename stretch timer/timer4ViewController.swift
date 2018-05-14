//
//  timer4ViewController.swift
//  stretch timer
//
//  Created by Rimika Inoguchi on 2018/05/13.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class timer4ViewController: UIViewController {

    var StopWatchTimer = Timer()
    var currentTime = 0
    

    
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var modoruButton: UIButton!
    
    
    @IBAction func hasPauseButtonPressed(_ sender: Any) {
        startButton.isHidden = false
        pauseButton.isHidden = false
        
        StopWatchTimer.invalidate()
    }
    
    @IBAction func hasStartButtonPressed(_ sender: Any) {
        
        startButton.isHidden = false
        pauseButton.isHidden = false
        stopButton.isEnabled = true
        
        StopWatchTimer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: (#selector(TimerViewController.updateTime)), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func hasStopButtonPressed(_ sender: Any) {
        
        pauseButton.isHidden = false
        startButton.isHidden = false
        stopButton.isEnabled = false
        
        currentTime = 0
        minutesLabel.text = "0"
        secondsLabel.text = "0"
        
        StopWatchTimer.invalidate()
    
    }
    
    @objc func updateTime(){
        
        currentTime += 1
        minutesLabel.text = "\(currentTime / 60)"
        secondsLabel.text = "\(currentTime % 60)"
        
        if currentTime == 3600{
            currentTime = 0
        }
        
    
    
    
        func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

        func didReceiveMemoryWarning() {
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
}
