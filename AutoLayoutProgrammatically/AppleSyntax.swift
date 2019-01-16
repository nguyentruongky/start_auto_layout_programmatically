//
//  ViewController.swift
//  Playground
//
//  Created by Ky Nguyen on 1/15/19.
//  Copyright © 2019 Ky Nguyen. All rights reserved.
//

import UIKit

class AppleSyntax: UIViewController {

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
        
        
        
        view.addSubview(imgView)
        imgView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        imgView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        imgView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imgView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        
        view.addSubview(termLabel)
        termLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        termLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        
        
        
        view.addSubview(fbLoginButton)
        fbLoginButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        fbLoginButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        fbLoginButton.heightAnchor.constraint(equalToConstant: 64).isActive = true
        
        
        view.addSubview(registerEmailButton)
        registerEmailButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        registerEmailButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        registerEmailButton.heightAnchor.constraint(equalToConstant: 64).isActive = true
        
        
        view.addSubview(loginButton)
        loginButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        registerEmailButton.bottomAnchor.constraint(equalTo: loginButton.topAnchor).isActive = true
        fbLoginButton.bottomAnchor.constraint(equalTo: registerEmailButton.topAnchor).isActive = true
        termLabel.bottomAnchor.constraint(equalTo: fbLoginButton.topAnchor, constant: -16).isActive = true
    }


}

