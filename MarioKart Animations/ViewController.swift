//
//  ViewController.swift
//  MarioKart Animations
//
//  Created by Pallav Agarwal on 2/12/20.
//  Copyright © 2020 Pallav Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kartView1: UIImageView!
    
    @IBOutlet weak var kartView2: UIImageView!
    
    @IBOutlet weak var kartView3: UIImageView!
    
    @IBOutlet weak var kartView4: UIImageView!
    
    @IBOutlet weak var kartView0: UIImageView!
    
    var images: [UIImageView] = []
    
    var imageLocations: [CGPoint]  = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        images = [kartView0, kartView1, kartView2, kartView3, kartView4]
        
        for image in images {
            imageLocations.append(image.center)
        }
        
    }

    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {

        let location = sender.location(in: view)
        
        print("Location: x: \(location.x), y: \(location.y)" )
        
        let kartView = sender.view!
        kartView.center = location
        
    }
    
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        
        let scale = sender.scale
        
        print("Scale: \(scale)")
        
        let kartView = sender.view!
        
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
        
    }
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        
        let rotation = sender.rotation
        
        print("Rotation: \(rotation)")
        
        let kartView = sender.view!
        
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
        
    }
    
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        
        let kartView = sender.view!
        
        UIView.animate(withDuration: 1) {
            kartView.center.x += 200
        }
        
    }
    
    
    @IBAction func didLongPressBackground(_ sender: UILongPressGestureRecognizer) {
        print("HOLDING")
        
        
        UIView.animate(withDuration: 2) {
            
            for (image, imageLocation) in zip(self.images, self.imageLocations) {
                image.center = imageLocation
                image.transform = CGAffineTransform.identity
            }
            
        }
        
    }
    
    
    
}

