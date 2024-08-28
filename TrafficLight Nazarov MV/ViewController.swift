//
//  ViewController.swift
//  TrafficLight Nazarov MV
//
//  Created by Максим Назаров on 27.08.2024.
//

import UIKit

enum CurrentLight {
    case red
    case yellow
    case green
}

final class ViewController: UIViewController {

    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var redView: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        switchButton.layer.cornerRadius = 10
    }
    
    @IBAction func switchLight() {
        
        if switchButton.currentTitle == "Start" {
            switchButton.setTitle("Next", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            currentLight = .red
        }
    }
    
}

