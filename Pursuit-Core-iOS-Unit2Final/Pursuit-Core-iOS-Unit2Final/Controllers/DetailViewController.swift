//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Ian Bailey on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
   
    @IBOutlet weak var crayonNameLabel: UILabel!
    @IBOutlet weak var crayonRedLabel: UILabel!
    @IBOutlet weak var crayonGreenLabel: UILabel!
    @IBOutlet weak var crayonBlueLabel: UILabel!
    @IBOutlet weak var crayonAlphaLabel: UILabel!
    
    @IBOutlet weak var crayonRedSlider: UISlider!
    @IBOutlet weak var crayonGreenSlider: UISlider!
    @IBOutlet weak var crayonBlueSlider: UISlider!
    
    @IBOutlet weak var crayonAlphaStepper: UIStepper!

    @IBOutlet var crayonColorView: UIView!
    

    var crayonData: Crayon?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCrayon()
        configStepper()
    }
    
    
    
    func configStepper() {
        crayonAlphaStepper.minimumValue = 0.0
        crayonAlphaStepper.maximumValue = 1.0
        crayonAlphaStepper.stepValue = 0.1
        crayonAlphaStepper.value = 1.0
    }
    
    
    
    
    func updateCrayon () {
        crayonNameLabel.text = crayonData?.name
        crayonColorView.backgroundColor = UIColor(displayP3Red: CGFloat(crayonData?.red ?? 255)/255, green: CGFloat(crayonData?.green ?? 255)/255, blue: CGFloat(crayonData?.blue ?? 255)/255, alpha: 1.0)
        
        crayonRedLabel.text = "Red: \(Float((crayonData?.red ?? 255)/255).description)"
        crayonRedSlider.setValue(Float((crayonData?.red ?? 255)/255), animated: true)
        
        crayonGreenLabel.text = "Green: \(Float((crayonData?.green ?? 255)/255).description)"
        crayonGreenSlider.setValue(Float((crayonData?.green ?? 255)/255), animated: true)
        
        crayonBlueLabel.text = "Blue: \(Float((crayonData?.blue ?? 255)/255).description) "
        crayonBlueSlider.setValue(Float((crayonData?.blue ?? 255)/255), animated: true)
        
        crayonAlphaLabel.text = "Alpha: 1.0"
    }
    
    
    @IBAction func updateBackgroundColor(_ sender: Any) {
        crayonColorView.backgroundColor = UIColor(displayP3Red: CGFloat(crayonRedSlider?.value ?? 255), green: CGFloat(crayonGreenSlider?.value ?? 255), blue: CGFloat(crayonBlueSlider?.value ?? 255), alpha: (CGFloat(crayonAlphaStepper?.value ?? 1)))
        crayonRedLabel.text = "Red: \(Float((crayonRedSlider.value)).description)"
        crayonGreenLabel.text = "Green: \(Float((crayonGreenSlider.value)).description)"
        crayonBlueLabel.text = "Blue: \(Float((crayonBlueSlider.value)).description)"
        crayonAlphaLabel.text = "Alpha: \(String(format: "%0.1f",(crayonAlphaStepper.value)))"
    }
    
  
    @IBAction func resetColor(_ sender: UIButton) {
        crayonColorView.backgroundColor = UIColor(displayP3Red: CGFloat(crayonData?.red ?? 255)/255, green: CGFloat(crayonData?.green ?? 255)/255, blue: CGFloat(crayonData?.blue ?? 255)/255, alpha: 1.0)
        
        crayonRedLabel.text = "Red: \(Float((crayonData?.red ?? 255)/255).description)"
        crayonRedSlider.setValue(Float((crayonData?.red ?? 255)/255), animated: true)
        
        crayonGreenLabel.text = "Green: \(Float((crayonData?.green ?? 255)/255).description)"
        crayonGreenSlider.setValue(Float((crayonData?.green ?? 255)/255), animated: true)
        
        crayonBlueLabel.text = "Blue: \(Float((crayonData?.blue ?? 255)/255).description) "
        crayonBlueSlider.setValue(Float((crayonData?.blue ?? 255)/255), animated: true)
        
        crayonAlphaStepper.value = 1.0
        crayonAlphaLabel.text = "Alpha: \(Double((crayonAlphaStepper.value)).rounded().description)"
        
    }
    
    
    
    
    
    
    
}



//
//crayonColorView.backgroundColor = UIColor(displayP3Red: CGFloat(crayonRedSlider?.value ?? 255), green: CGFloat(crayonGreenSlider?.value ?? 255), blue: CGFloat(crayonBlueSlider?.value ?? 255), alpha: 1.0)
//crayonRedLabel.text = "Red: \(Double((crayonRedSlider.value)).description)"
//crayonGreenLabel.text = "Green: \(Double((crayonGreenSlider.value)).description)"
//crayonBlueLabel.text = "Blue: \(Double((crayonBlueSlider.value)).description)"
