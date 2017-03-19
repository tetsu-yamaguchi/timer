//
//  ViewController.swift
//  timer
//
//  Created by MAC USER on 2017/03/16.
//  Copyright © 2017年 MAC USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer: Timer!
    var timer_sec: Float = 0//型は大文字で
    func updateTimer(timer: Timer) {
        self.timer_sec += 0.1
        self.timerLabel.text = String(format: "%.1f", timer_sec)
    }
    @IBAction func saisei(_ sender: Any) {
        // 再生ボタンを押すとタイマー作成、始動
        self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    @IBAction func teisi(_ sender: Any) {
        // タイマーを破棄
        self.timer.invalidate()
    }

    @IBAction func reset(_ sender: Any) {
        // リセットボタンを押すと、タイマーの時間を0に
        self.timer_sec = 0
        self.timerLabel.text = String(format: "%.1f", self.timer_sec)
    }

    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

