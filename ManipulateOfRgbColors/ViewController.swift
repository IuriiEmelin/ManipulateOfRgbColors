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
        
        labelForRed.text = String(format: "%.2f", redSlider.value)
        labelForGreen.text = String(format: "%.2f", greenSlider.value)
        labelForBlue.text = String(format: "%.2f", blueSlider.value)
        
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        
        switch sender {
        case redSlider:
            labelForRed.text = String(format: "%.2f", redSlider.value)
        case greenSlider:
            labelForGreen.text = String(format: "%.2f", greenSlider.value)
        default:
            labelForBlue.text = String(format: "%.2f", blueSlider.value)
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
}
