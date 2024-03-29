//
//  RegisterViewController.swift
//  EarlBlack
//
//  Created by queque on 14.06.2022.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var register_form_view: UIView!
    var register_form_vc: UIViewController = RegisterFormViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activeViewController = register_form_vc
    }
    
    private var activeViewController: UIViewController? {
        didSet {
            updateActiveViewController()
        }
    }
}

extension RegisterViewController {
    private func updateActiveViewController() {
        if let activeVC = activeViewController {
            addChild(activeVC)
            activeVC.view.frame = register_form_view.bounds
            register_form_view.addSubview(activeVC.view)
            activeVC.didMove(toParent: self)
        }
    }
}
