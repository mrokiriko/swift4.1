//
//  OrangeViewController.swift
//  homework4-1
//
//  Created by Admin on 28.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var viewToMove: UIView!
    
    @IBAction func goAnimate(_ sender: Any) {
    
        let start = viewToMove.center
        
        UIView.animateKeyframes(withDuration: 0.8, delay: 0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.2) {
                self.viewToMove.center = CGPoint(x: start.x - 50, y: start.y)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.2) {
                self.viewToMove.center = CGPoint(x: start.x - 50, y: start.y + 50)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.4, relativeDuration: 0.2) {
                self.viewToMove.center = CGPoint(x: start.x, y: start.y + 50)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.2) {
                self.viewToMove.center = start
            }
            
        })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
