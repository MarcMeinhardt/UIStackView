//
//  SurveyButton.swift
//  UIStackView
//
//  Created by Marc Meinhardt on 20.01.20.
//  Copyright © 2020 Marc Meinhardt. All rights reserved.
//

import UIKit

class SurveyButton : UIButton {
    
    override init (frame: CGRect) {
        super.init (frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        setTitleColor(.white, for: .normal)
        backgroundColor     = .red
        titleLabel?.font    = UIFont(name: "AvenirNext-DemiBoldItalic", size: 28)
        layer.cornerRadius  = 10
    }

}
