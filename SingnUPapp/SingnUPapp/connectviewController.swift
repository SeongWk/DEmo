//
//  connectviewController.swift
//  SingnUPapp
//
//  Created by SeongWookLim on 2022/05/14.
//

import UIKit
class connectviewController:UIViewController
{
    override func viewDidLoad() {
        stopwatchlbl.text = String(counter)
        stopbtn.isEnabled = false
    }
    var counter = 00.00
    var timer = Timer()
    var isPlaying = false
    
    @IBOutlet weak var startbtn: UIButton!
    @IBOutlet weak var stopbtn: UIButton!
    @IBOutlet weak var resetbtn: UIButton!
    @IBOutlet weak var stopwatchlbl: UILabel!
    
    @IBAction func resetbtn(_ sender: Any) {
        startbtn.isEnabled = true
        stopbtn.isEnabled = false
        timer.invalidate()
        isPlaying = false
        counter = 00.00
        stopwatchlbl.text = String(counter)
    }
    
    
    @IBAction func startime(_ sender: Any) {
        if(isPlaying)
        {
            return
        }
        startbtn.isEnabled = false
        stopbtn.isEnabled = true
        timer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(updateTIme), userInfo: nil, repeats: true)
        isPlaying = true
    }
    @IBAction func stoptime(_ sender: Any) {
        startbtn.isEnabled = true
        stopbtn.isEnabled = false
        timer.invalidate()
        isPlaying = false
    }
   
    @objc func updateTIme()
    {
        counter = counter + 0.0001
        stopwatchlbl.text = String(format: "%.0001f", counter)
    }
}

