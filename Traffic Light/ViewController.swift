//
//  ViewController.swift
//  Traffic Light
//
//  Created by Игорь Соколов on 18.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightRed: UIView!
    @IBOutlet var lightYellow: UIView!
    @IBOutlet var lightGreen: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightRed.layer.cornerRadius = 30.5
        lightRed.alpha = 0.3
        lightYellow.layer.cornerRadius = 30.5
        lightYellow.alpha = 0.3
        lightGreen.layer.cornerRadius = 30.5
        lightGreen.alpha = 0.3
        trafficLightButton.layer.cornerRadius = 10
    }

   
    @IBAction func trafficLightButtonTapped(_ sender: UIButton) {
        
        print("1")
        
        if lightRed.alpha == lightYellow.alpha &&
            lightGreen.alpha == lightYellow.alpha {
            
            lightRed.alpha = 1
            
        } else if lightRed.alpha == 1 {
            
            lightRed.alpha = 0.3
            lightYellow.alpha = 1
            
        } else if lightYellow.alpha == 1 {
            
            lightYellow.alpha = 0.3
            lightGreen.alpha = 1
            
        } else if lightGreen.alpha == 1 {
            
            lightGreen.alpha = 0.3
            lightRed.alpha = 1
            }
        
        trafficLightButton.setTitle(
            lightRed.alpha == 0.3 ? "Start" : "Next",
            for: .normal
        )
    }
}

