//
//  SecondViewController.swift
//  CATransitions
//
//  Created by Mansi Shah on 12/9/17.
//  Copyright © 2017 Mansi Shah. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var btnGoBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnGoBack.setTitle("Go Back", for: .normal)
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = UIColor.gray.withAlphaComponent(0.3)
    }
    
    @IBAction func btnGoBackTapped(_ sender: UIButton) {
        // 👉🏼 Add your animation before you push/pop the view controller
        navigationController?.addTransition()
        navigationController?.popViewController(animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
