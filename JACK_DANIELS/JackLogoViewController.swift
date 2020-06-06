//
//  JackLogoViewController.swift
//  UICourceApp
//
//  Created by Татьяна Севостьянова on 14.01.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit

class JackLogoViewController: UIViewController {
    
    let logoImageView = UIImageView(image: .logo)
    
    override func loadView() {
        super.loadView()
    
        view.backgroundColor = .black
        view.addSubview(logoImageView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImageView.snp.makeConstraints({ item in
            item.height.equalTo(128)
            item.width.equalTo(240)
            item.centerX.equalToSuperview()
            item.centerY.equalToSuperview()
        })
    }
}
