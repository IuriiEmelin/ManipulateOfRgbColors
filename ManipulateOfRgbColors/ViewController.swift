//
//  ViewController.swift
//  ManipulateOfRgbColors
//
//  Created by Юрий Емелин on 29.04.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var coloredView: UIView!
    
    @IBOutlet var labelForRed: UILabel!
    @IBOutlet var labelForGreen: UILabel!
    @IBOutlet var labelForBlue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coloredView.layer.cornerRadius = 15
        setColor()
        
        labelForRed.text = string(from: redSlider)
        labelForGreen.text = string(from: greenSlider)
        labelForBlue.text = string(from: blueSlider)
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            labelForRed.text = string(from: redSlider)
        case greenSlider:
            labelForGreen.text = string(from: greenSlider)
        default:
            labelForBlue.text = string(from: blueSlider)
        }
    }
    
    private func setColor() {
        coloredView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
