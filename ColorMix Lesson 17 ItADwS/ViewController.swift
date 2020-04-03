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
        
        updateControls()
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        colorView.backgroundColor = UIColor.clear
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0

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
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
   // Method to make sure all of the slides are anabel properly
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
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

