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
        coloredView.layer.cornerRadius = 10
        
    }
    
    // MARK: - IBActions
    
    @IBAction func valueRedSliderChange(_ sender: UISlider) {
        labelForRed.text = String(format: "%.2f", redSlider.value)
    }
    @IBAction func valueGreenSliderChange(_ sender: UISlider) {
        labelForGreen.text = String(format: "%.2f", greenSlider.value)
    }
    @IBAction func valueBlueSliderChange(_ sender: UISlider) {
        labelForBlue.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func redSliderChange(_ sender: UISlider) {
        changeViewColor()
    }
    @IBAction func greenSliderChange(_ sender: UISlider) {
        changeViewColor()
    }
    @IBAction func blueSliderChange(_ sender: UISlider) {
        changeViewColor()
    }
    
    // MARK: - Private Methods
    
    private func changeViewColor() {
        coloredView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value),
                                              green: CGFloat(greenSlider.value),
                                              blue: CGFloat(blueSlider.value),
                                              alpha: 1)
    }
    
}

