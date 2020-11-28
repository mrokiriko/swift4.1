//
//  ThirdViewController.swift
//  homework4-1
//
//  Created by Admin on 28.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var customTest : String = ""
    
    @IBOutlet weak var outputText: UILabel!
    
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.outputText.text = self.customTest
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
