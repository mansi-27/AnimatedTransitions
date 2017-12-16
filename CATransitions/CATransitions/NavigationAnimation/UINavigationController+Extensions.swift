//
//  UINavigationController+Extensions.swift
//  CATransitions
//
//  Created by Mansi Shah on 12/9/17.
//  Copyright © 2017 Mansi Shah. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    func addTransition() {
        // First, we initiate a CATransition object
        let transition = CATransition()
        // Second, we define the duration for the transition to get COMPLETED
        transition.duration = 1.5
        // Here, you define the animation pacing (whether it starts slowly, ends faster OR starts faster, ends slowly... etc)
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        // You can use kCATransitionMoveIn, kCATransitionFade, kCATransitionPush, or kCATransitionReveal as the transition type 🤗
        transition.type = kCATransitionPush
        // You can use kCATransitionFromBottom, kCATransitionFromTop, kCATransitionFromLeft, or kCATransitionFromRight as the transition sub-type 🤗
        transition.subtype = kCATransitionFromTop
        // Lastly, we add this animated transition to the layer of Navigation controller.
        // 👉🏼 Make sure, this is added before actually pushing/ pop-ing the next/previous view controller
        self.view.layer.add(transition, forKey: nil)
    }
}
