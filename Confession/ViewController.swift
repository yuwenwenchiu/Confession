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

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var rateSlider: UISlider!
    @IBOutlet weak var rateText: UILabel!
    @IBOutlet weak var pitchSlider: UISlider!
    @IBOutlet weak var pitchText: UILabel!
    
    
    @IBAction func changeSlider(_ sender: Any) {
        rateText.text = String(format: "%.1f", rateSlider.value)
        pitchText.text = String(format: "%.1f", pitchSlider.value)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let speechUtterance = AVSpeechUtterance(string: textField.text!)
        let synthesizer = AVSpeechSynthesizer()
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        speechUtterance.rate = rateSlider.value
        speechUtterance.pitchMultiplier = pitchSlider.value
        synthesizer.speak(speechUtterance)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

