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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.backgroundColor = .black
        colorView.layer.cornerRadius = 10
    }


}

