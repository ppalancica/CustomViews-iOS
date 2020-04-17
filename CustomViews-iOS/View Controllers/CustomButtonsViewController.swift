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
    static let topPadding = 128
}

class CustomButtonsViewController: UIViewController {

    private lazy var simpleButton = makeSimpleButton()
    private lazy var paddingsButton = makePaddingsButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
                        
        addSimpleButton()
        addPaddingsButton()
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
    
    private func makePaddingsButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Paddings Button", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
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
    
    private func addPaddingsButton() {
        let paddingsButtonSize = paddingsButton.frame.size
        
        paddingsButton.frame = CGRect(
            origin: CGPoint(x: Constants.leftPadding, y: Constants.topPadding + 60),
            size: paddingsButtonSize
        )
        
        view.addSubview(paddingsButton)
    }
}
