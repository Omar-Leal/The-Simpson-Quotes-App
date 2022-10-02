//
//  ViewController.swift
//  Autolayout by code
//
//  Created by Omar Leal on 10/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    private let simpsonLogo: UIImageView = {
        let simpsonImage = UIImageView()
        simpsonImage.contentMode = .scaleAspectFit // change the image default ratio
        simpsonImage.image = UIImage(named: "The-Simpsons") // add the image itself png or jpg
        simpsonImage.translatesAutoresizingMaskIntoConstraints = false
        return simpsonImage
    }()
    
    
    
    let mainTitle: UILabel = {
        let titleText = UILabel()
        titleText.numberOfLines = 0 
        titleText.textAlignment = .center
        titleText.text = "By Matt Groening and Sam Simon"
        titleText.font = UIFont(name: "Helvetica", size: 16)
        titleText.textColor = .white
        titleText.translatesAutoresizingMaskIntoConstraints = false
        return titleText
    }()
    
    
    
    private var customButton: UIButton = {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = "Get a Quote"
        buttonConfiguration.subtitle = "Just tap"
        
        let button = UIButton(type:  .system)
        button.addTarget(ViewController.self, action: #selector(showMessge), for: .touchUpInside)
        button.configuration = buttonConfiguration
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
       
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = appBackground
        
        [ simpsonLogo, mainTitle, customButton ].forEach(view.addSubview)
        
        NSLayoutConstraint.activate([
            simpsonLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),  // centrado en la vista
            simpsonLogo.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            simpsonLogo.heightAnchor.constraint(equalToConstant: 300),
            
            simpsonLogo.widthAnchor.constraint(equalToConstant: 300),
            customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor), // centrado en la vista
            customButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            customButton.heightAnchor.constraint(equalToConstant: 80),
            customButton.widthAnchor.constraint(equalToConstant: 200),
            
            
            mainTitle.bottomAnchor.constraint(equalTo: customButton.topAnchor, constant:  -42),
            mainTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor),  // like the max-width of css
            mainTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor), // like the max-width of css
            mainTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor), // centrado en la vista
            
        ])
    
    }

    
    
    @objc func showMessge() {
        print("Skip onboarding")
    }
    

}

