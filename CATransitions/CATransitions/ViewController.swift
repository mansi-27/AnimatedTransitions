//
//  ViewController.swift
//  CATransitions
//
//  Created by Mansi Shah on 12/9/17.
//  Copyright © 2017 Mansi Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnNavigate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnNavigate.setTitle("Navigate", for: .normal)
    }
    
    @IBAction func btnNavigateTapped(_ sender: UIButton) {
        // 👉🏼 Add your animation before you push/pop the view controller
        navigationController?.addTransition()
        navigationController?.pushViewController(SecondViewController(), animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

