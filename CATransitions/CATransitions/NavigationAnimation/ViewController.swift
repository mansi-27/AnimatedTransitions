//
//  ViewController.swift
//  CATransitions
//
//  Created by Mansi Shah on 12/9/17.
//  Copyright © 2017 Mansi Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var btnNavigate: UIButton!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        btnNavigate.setTitle("Navigate", for: .normal)
        view.backgroundColor = MyColorHelper.darkBlue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IBActions
    @IBAction func btnNavigateTapped(_ sender: UIButton) {
        /// 👉🏼 Add your animation before you push/pop the view controller
        navigationController?.addAnimatedTransition()
        /// 👉🏼 Don't forget to set the default animated property to FALSE
        navigationController?.pushViewController(SecondViewController(), animated: false)
    }
}

