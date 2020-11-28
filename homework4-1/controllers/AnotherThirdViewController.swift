//
//  AnotherThirdViewController.swift
//  homework4-1
//
//  Created by Admin on 28.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class AnotherThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var lightSomething: UIView!
    
    @IBOutlet weak var yellowEmbarressment: UIView!
    
    
    
    var switchView : Bool = false
    
    
    @IBAction func tap1(_ sender: Any) {
        
        viewChangeOver()
        
        print("tapping so hard right now")
        
    }
    
    @IBAction func tap2(_ sender: Any) {
        
        viewChangeOver()
        
        print("i am not in control of this situation")
        
    }
    
    func viewChangeOver() {
        UIView.transition(
            from: switchView ? lightSomething : yellowEmbarressment,
            to: switchView ? yellowEmbarressment : lightSomething,
            duration: 0.4,
            options: [.transitionFlipFromTop, .showHideTransitionViews])
        { _ in
                
            self.switchView.toggle()
            
        }
        
    }
    
    
    @IBOutlet weak var randomCol: UIView!
    
    
    @IBOutlet weak var ranColConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var ranColConLeft: NSLayoutConstraint!
    
    
    @IBAction func tap3(_ sender: Any) {
        
        randomCol.backgroundColor = UIColor(cgColor: CGColor(srgbRed: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1))
        
        ranColConstraint.constant = .random(in: 1...100)
        
        ranColConLeft.constant = .random(in: 1...100)

    }
    

}
