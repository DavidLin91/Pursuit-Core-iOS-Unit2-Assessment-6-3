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
        alphaStepper.value = Double(Float(1.0))
    }
    
    @IBAction func colorChangeSliders(_ sender: AnyObject) {
        switch sender.tag {
        case 0:
            redColorChangeSlider.value = sender.value
        case 1:
            greenColorChangeSlider.value = sender.value
        case 2:
            blueColorChangeSlider.value = sender.value
        case 3:
            alphaStepper.value = sender.value
        default:
            break
        }
        let newRedNumber = redColorChangeSlider.value
        let newGreenNumber = greenColorChangeSlider.value
        let newBlueNumber = blueColorChangeSlider.value
        let newAlphaNum = alphaStepper.value
        self.view.backgroundColor = UIColor(red: CGFloat(newRedNumber), green: CGFloat(newGreenNumber), blue: CGFloat(newBlueNumber), alpha: CGFloat(newAlphaNum))
    }

    
    @IBAction func colorResetButton(_ sender: UIButton) {
    self.view.backgroundColor = UIColor(red: CGFloat(color.red)/255, green: CGFloat(color.green)/255, blue: CGFloat(color.blue)/255, alpha: CGFloat(1.0))
    redColorChangeSlider.value = Float(color.red/255)
    greenColorChangeSlider.value = Float(color.green/255)
    blueColorChangeSlider.value = Float(color.blue/255)
    }
}
