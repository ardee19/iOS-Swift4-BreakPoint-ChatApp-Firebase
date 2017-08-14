//
//  UIViewControllerExt.swift
//  BreakPoint
//
//  Created by Super Awesome on 8/14/17.
//  Copyright © 2017 Roy Dimayuga. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentDetail(_ viewContollerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        present(viewContollerToPresent, animated: false, completion: nil)
    }
    
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        dismiss(animated: false, completion: nil)
    }
}
