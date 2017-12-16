//
//  ThirdViewController.swift
//  CATransitions
//
//  Created by Mansi Shah on 12/16/17.
//  Copyright © 2017 Mansi Shah. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var btnDismiss: UIButton!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = MyColorHelper.blue
        btnDismiss.setTitle("Dismiss", for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IBActions
    @IBAction func btnDismissTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
