//
//  MainViewController.swift
//  CustomViews-iOS
//
//  Created by Pavel Palancica on 4/17/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var customButtonsViewController = CustomButtonsViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func customButtonsTouched() {
        customButtonsViewController = CustomButtonsViewController()
        navigationController?.pushViewController(customButtonsViewController, animated: true)
    }
    
    @IBAction func customTextFieldsTouched() {
        
    }
    
    @IBAction func customTextViewsTouched() {
        
    }
}
