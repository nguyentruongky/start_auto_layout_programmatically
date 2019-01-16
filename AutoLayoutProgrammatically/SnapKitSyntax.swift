//
//  SnapKitSyntax.swift
//  Playground
//
//  Created by Ky Nguyen on 1/15/19.
//  Copyright © 2019 Ky Nguyen. All rights reserved.
//

import UIKit
import SnapKit

class SnapKitSyntax: UIViewController {

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
        imgView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        })
        
        
        view.addSubview(termLabel)
        termLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
        
        view.addSubview(fbLoginButton)
        fbLoginButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(64)
        }
        

        view.addSubview(registerEmailButton)
        registerEmailButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(64)
        }
        
        
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalTo(32)
        }
        
        registerEmailButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(loginButton.snp.top)
        }

        fbLoginButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(registerEmailButton.snp.top)
        }

        termLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(fbLoginButton.snp.top).inset(-16)
        }
    }
}
