//
//  ViewController.swift
//  ColorMix Lesson 17 ItADwS
//
//  Created by Ivan Prybolovetz on 4/3/20.
//  Copyright © 2020 Ivan Prybolovetz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.backgroundColor = .black
        colorView.layer.cornerRadius = 10
        colorView.layer.borderColor = UIColor.red.cgColor
        colorView.layer.borderWidth = 5
    }
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        colorView.backgroundColor = UIColor.clear
        
    }
    
    @IBAction func rgbSlideUpdate(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func redAction(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func greenAction(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func blueAction(_ sender: UISwitch) {
        updateColor()
    }
    
    
    func updateColor() {
        var red : CGFloat = 0
        var green : CGFloat = 0
        var blue : CGFloat = 0
        
        if redSwitch.isOn{
            red = 1
        }
        if greenSwitch.isOn{
            green = 1
        }
        if blueSwitch.isOn{
            blue = 1
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
//    @IBAction func switchChanget(_ sender: UISwitch) {
//        if sender.isOn {
//            colorView.backgroundColor = .red
//        } else {
//            colorView.backgroundColor = .black
//
//        }
//    }
    
}

