//
//  ViewController.swift
//  Confession
//
//  Created by Yuwen Chiu on 2018/8/19.
//  Copyright © 2018年 YuwenChiu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //所有outlet
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var rateSlider: UISlider!
    @IBOutlet weak var rateText: UILabel!
    @IBOutlet weak var pitchSlider: UISlider!
    @IBOutlet weak var pitchText: UILabel!
    //語速和語調依照slider滑動顯示不同數字
    @IBAction func changeSlider(_ sender: Any) {
        rateText.text = String(format: "%.1f", rateSlider.value)
        pitchText.text = String(format: "%.1f", pitchSlider.value)
    }
    //按鈕動作：讀取textField的內容說話
    @IBAction func buttonPressed(_ sender: Any) {
        let speechUtterance = AVSpeechUtterance(string: textField.text!)
        let synthesizer = AVSpeechSynthesizer()
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        speechUtterance.rate = rateSlider.value
        speechUtterance.pitchMultiplier = pitchSlider.value
        synthesizer.speak(speechUtterance)
    }
    
}

