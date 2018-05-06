//
//  TimerViewController.swift
//  stretch timer
//
//  Created by Rimika Inoguchi on 2018/04/27.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    
    var timer = Timer()
    var startTime: TimeInterval = 0
    var elapsedTime = 0.0
    var time  = 0.0
    
    
    @IBOutlet var labelTimer: UILabel!
    @IBOutlet var buttonStart: UIButton!
    @IBOutlet var buttonStop: UIButton!
    @IBOutlet var buttonReset: UIButton!
    
    @IBAction func startbuttonTapped() {
        
        buttonStart.isEnabled = false
        buttonReset.isEnabled = false
        
        buttonStop.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector (self.update), userInfo: nil, repeats: true)
    }
    
    @IBAction func update() {
        
        time = Date().timeIntervalSince1970 - startTime + elapsedTime
        
        let sec = Int(time)
        let msec = Int((time - Double(sec)) * 100)
        
        let displayStr = NSString(format: "%02d:%02d.%02d", sec/60, sec%60, msec) as String
        labelTimer.text = displayStr
        
        
    }
    @IBAction func stopbuttonTapped() {
        
        buttonStart.isEnabled = true
        buttonReset.isEnabled = true
        
        buttonStop.isEnabled = false
        
        timer.invalidate()
        
        elapsedTime = time
    }
    
    
    @IBAction func resetbuttonTapeed() {
        
        
        elapsedTime = 0.0
        labelTimer.text = "00:00.00"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
}


