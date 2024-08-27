//
//  ViewController.swift
//  TrafficLight Nazarov MV
//
//  Created by Максим Назаров on 27.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var redView: UIView!
    @IBOutlet var switchButton: UIButton!
    private var currentView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        switchButton.layer.cornerRadius = 10
    }
    
    @IBAction func switchLight(_ sender: UIButton) {
        switch currentView {
        case nil, greenView:
            greenView.alpha = 0.3
            currentView = redView
            redView.alpha = 1
            sender.setTitle("Next", for: .normal)
        case redView:
            currentView = yellowView
            redView.alpha = 0.3
            yellowView.alpha = 1
        case yellowView:
            currentView = greenView
            yellowView.alpha = 0.3
            greenView.alpha = 1
        default:
            break
        }
    }
    
}

