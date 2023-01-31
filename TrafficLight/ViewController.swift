//
//  ViewController.swift
//  TrafficLight
//
//  Created by Timur Dzamikh on 31.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = "red"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }

    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case "red":
            redLight.alpha = 1
            currentLight = "yellow"
        case "yellow":
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            currentLight = "green"
        case "green":
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            currentLight = "turn off"
        case "turn off":
            greenLight.alpha = 0.3
            currentLight = "red"
            startButton.setTitle("START", for: .normal)
        default:
            break
        }
        
    }
    
}

