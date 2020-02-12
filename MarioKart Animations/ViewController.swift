//
//  ViewController.swift
//  MarioKart Animations
//
//  Created by Pallav Agarwal on 2/12/20.
//  Copyright © 2020 Pallav Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("MOO")
    }

    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {

        let location = sender.location(in: view)
        
        print("Location: x: \(location.x), y: \(location.y)" )
        
        let kartView = sender.view!
        kartView.center = location
        
    }
    
}

