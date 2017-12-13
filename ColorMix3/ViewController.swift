//
//  ViewController.swift
//  ColorMix3
//
//  Created by Dean Hester on 11/14/17.
//  Copyright © 2017 Dean Hester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        updateColor()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    @IBAction func reset(_ sender: Any) {
       updateColor()
    }
    
    @IBAction func switchChanged(_ sender: UISwitch)
    {
      updateColor()
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
}

