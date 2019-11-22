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
        
    }
    
    func updateCrayon () {
        crayonNameLabel.text = crayonData?.name
        crayonColorView.backgroundColor = UIColor(displayP3Red: CGFloat(crayonData?.red ?? 255)/255, green: CGFloat(crayonData?.green ?? 255)/255, blue: CGFloat(crayonData?.blue ?? 255)/255, alpha: 1.0)
        crayonRedLabel.text = "Red: \(((crayonData?.red ?? 255)/255).description)"
        crayonRedSlider.setValue(Float((crayonData?.red ?? 255)/255), animated: true)
        crayonGreenLabel.text = "Green: \(((crayonData?.green ?? 255)/255).description)"
        crayonGreenSlider.setValue(Float((crayonData?.green ?? 255)/255), animated: true)
        crayonBlueLabel.text = "Blue: \(((crayonData?.blue ?? 255)/255).description) "
        crayonBlueSlider.setValue(Float((crayonData?.blue ?? 255)/255), animated: true)
    }
}
