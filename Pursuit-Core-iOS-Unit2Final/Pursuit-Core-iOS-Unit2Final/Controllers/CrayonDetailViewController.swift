//
//  CrayonDetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by David Lin on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {
    
    @IBOutlet weak var redColorChangeSlider: UISlider!
    @IBOutlet weak var greenColorChangeSlider: UISlider!
    @IBOutlet weak var blueColorChangeSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var colorResetButton: UIButton!
    @IBOutlet weak var crayonName: UILabel!
    
    var color: Crayon!

    override func viewDidLoad() {
        super.viewDidLoad()
        crayonName.text = color.name
        self.view.backgroundColor = UIColor(red: CGFloat(color.red)/255, green: CGFloat(color.green)/255, blue: CGFloat(color.blue)/255, alpha: CGFloat(1.0))
        redColorChangeSlider.value = Float(color.red/255)
        greenColorChangeSlider.value = Float(color.green/255)
        blueColorChangeSlider.value = Float(color.blue/255)
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        var currentFloat = color.red
        redColorChangeSlider.value = sender.value
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
    }
    
    @IBAction func alphaStepper(_ sender: UIStepper) {
    }
    
    @IBAction func colorResetButton(_ sender: UIButton) {
    self.view.backgroundColor = UIColor(red: CGFloat(color.red)/255, green: CGFloat(color.green)/255, blue: CGFloat(color.blue)/255, alpha: CGFloat(1.0))
    redColorChangeSlider.value = Float(color.red/255)
    greenColorChangeSlider.value = Float(color.green/255)
    blueColorChangeSlider.value = Float(color.blue/255)
    }
    
    
}
