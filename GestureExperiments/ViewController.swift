//
//  ViewController.swift
//  GestureExperiments
//
//  Created by David Svensson on 2022-11-24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        //print("moving")
        
        let translation = sender.translation(in: self.view)
        
        if let viewToPan = sender.view {
            viewToPan.center = CGPoint(x: viewToPan.center.x + translation.x,
                                       y: viewToPan.center.y + translation.y)
        }
        
        sender.setTranslation(CGPoint.zero, in: self.view)
        
    }
    
    @IBAction func catTaped(_ sender: UITapGestureRecognizer) {
        print("cat tapped!")
        
    }
}

