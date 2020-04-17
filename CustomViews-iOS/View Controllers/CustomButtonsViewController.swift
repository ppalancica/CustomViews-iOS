//
//  CustomButtonsViewController.swift
//  CustomViews-iOS
//
//  Created by Pavel Palancica on 4/18/20.
//  Copyright © 2020 I Dev TV. All rights reserved.
//

import UIKit

private struct Constants {
    static let leftPadding = 16
    static let topPadding = 16
}

class CustomButtonsViewController: UIViewController {

    private lazy var simpleButton = makeSimpleButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
                        
        addSimpleButton()
    }
}

private extension CustomButtonsViewController {
    
    private func makeSimpleButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Simple Button", for: .normal)
        button.sizeToFit()
        return button
    }
}

private extension CustomButtonsViewController {
    
    private func addSimpleButton() {
        let simpleButtonSize = simpleButton.frame.size
        
        simpleButton.frame = CGRect(
            origin: CGPoint(x: Constants.leftPadding, y: Constants.topPadding),
            size: simpleButtonSize
        )
        
        view.addSubview(simpleButton)
    }
}
