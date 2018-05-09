//
//  TimerViewController.swift
//  stretch timer
//
//  Created by Rimika Inoguchi on 2018/05/09.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
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
        pauseButton.isHidden = true
        
        StopWatchTimer.invalidate()
    
    }
    
    
    @IBAction func hasStartButtonPressed(_ sender: Any) {
        
        startButton.isHidden = true
        pauseButton.isHidden = false
        stopButton.isEnabled = true
        
        StopWatchTimer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: (#selector(TimerViewController.updateTime)), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func hasStopButtonPressed(_ sender: Any) {
        
        pauseButton.isHidden = true
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
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pauseButton.isHidden = true
        stopButton.isEnabled = false
    
        
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
