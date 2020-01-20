//
//  ViewController.swift
//  UIStackView
//
//  Created by Marc Meinhardt on 20.01.20.
//  Copyright © 2020 Marc Meinhardt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var titleLabel  = UILabel()
    var stackView   = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        configureTitleLabel()
        configureStackView()
    }
    
    
    func configureStackView() {
        view.addSubview(stackView)
        stackView.axis          = .vertical
        stackView.distribution  = .fillEqually
        stackView.spacing       = 20
        
        addButtonsToStackView()
        setupStackViewConstraints()
    }
    
    
    func addButtonsToStackView() {
        let  numberOfButtons = 5
        
        for i in 1...numberOfButtons {
            let button = SurveyButton()
            button.setTitle("\(i)", for: .normal)
            
            // to add a stackview to a view
            stackView.addArrangedSubview(button)
        }
    }

    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.text                         = "How would you rate this tutorial ?"
        titleLabel.font                         = UIFont.boldSystemFont(ofSize: 36)
        titleLabel.textAlignment                = .center
        titleLabel.numberOfLines                = 0
        titleLabel.adjustsFontSizeToFitWidth    = true
        
        setupTitleLabelConstraints()
    }
    
    
    func setupStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints                                                             = false
        stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive                         = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive      = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive   = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive       = true
    }
    
    
    func setupTitleLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints                                                            = false
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive             = true
        titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive     = true
        titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive  = true
    }

}
