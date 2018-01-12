//
//  SecondViewController.swift
//  CATransitions
//
//  Created by Mansi Shah on 12/9/17.
//  Copyright © 2017 Mansi Shah. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var btnGoBack: UIButton!
    @IBOutlet weak var btnHorizontalFlip: UIButton!
    @IBOutlet weak var btnPageCurl: UIButton!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        btnGoBack.setTitle("Go Back", for: .normal)
        btnHorizontalFlip.setTitle("Present with a Flip", for: .normal)
        btnPageCurl.setTitle("Present with a Curl", for: .normal)
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = MyColorHelper.green
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IBActions
    @IBAction func btnGoBackTapped(_ sender: UIButton) {
        /// 👉🏼 Add your animation before you push/pop the view controller
        navigationController?.addAnimatedTransition()
        /// 👉🏼 Don't forget to set the default animated property to FALSE
        navigationController?.popViewController(animated: false)
    }
    
    @IBAction func btnHorizontalFlipTapped(_ sender: UIButton) {
        let presentationVC = ThirdViewController()
        presentationVC.modalTransitionStyle = .flipHorizontal
        present(presentationVC, animated: true, completion: nil)
    }
    
    @IBAction func btnPageCurlTapped(_ sender: UIButton) {
        let presentationVC = ThirdViewController()
        presentationVC.modalTransitionStyle = .partialCurl
        present(presentationVC, animated: true, completion: nil)
    }
}
