//
//  KNConstraintsSyntax.swift
//  Playground
//
//  Created by Ky Nguyen on 1/16/19.
//  Copyright © 2019 Ky Nguyen. All rights reserved.
//

import UIKit

class KNConstraintsSyntax: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        let imgView = UIImageView(image: UIImage(named: "air_balloon"))
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFill
        
        let termLabel = UILabel()
        termLabel.translatesAutoresizingMaskIntoConstraints = false
        termLabel.textAlignment = .center
        termLabel.numberOfLines = 0
        termLabel.text = "By signing up, you agree to our Terms & Privacy Policy"
        termLabel.textColor = .white
        
        let fbLoginButton = UIButton()
        fbLoginButton.translatesAutoresizingMaskIntoConstraints = false
        fbLoginButton.setTitle("Login with Facebook", for: .normal)
        fbLoginButton.setTitleColor(.white, for: .normal)
        fbLoginButton.backgroundColor = UIColor(red: 123/255, green: 107/255, blue: 173/255, alpha: 1)
        
        let registerEmailButton = UIButton()
        registerEmailButton.translatesAutoresizingMaskIntoConstraints = false
        registerEmailButton.setTitle("Sign up with email", for: .normal)
        registerEmailButton.setTitleColor(.white, for: .normal)
        registerEmailButton.backgroundColor = UIColor(red: 163/255, green: 128/255, blue: 190/255, alpha: 1)
        
        let loginButton = UIButton()
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("I already have an account", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = UIColor(red: 171/255, green: 163/255, blue: 177/255, alpha: 1)
        
        view.addSubviews(views: imgView, termLabel, fbLoginButton, registerEmailButton, loginButton)
        imgView.fill(toView: view)
        
        termLabel.horizontal(toView: view, space: 16)
        termLabel.verticalSpacingDown(toView: fbLoginButton, space: -16)

        fbLoginButton.horizontal(toView: view)
        fbLoginButton.height(64)
        fbLoginButton.verticalSpacingDown(toView: registerEmailButton)

        registerEmailButton.horizontal(toView: view)
        registerEmailButton.height(64)
        registerEmailButton.verticalSpacingDown(toView: loginButton)

        loginButton.horizontal(toView: view)
        loginButton.bottom(toView: view)
        loginButton.height(32)
        
    }
}

