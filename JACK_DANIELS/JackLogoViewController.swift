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
    
    lazy var logoImageView: UIImageView = {
        let view = UIImageView(image: .logo)
        view.setImageColor(color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        return view
    }()
    
    override func loadView() {
        super.loadView()
        
        navigationController?.navigationBar.isHidden = true
        
        view.backgroundColor = .black
        view.addSubview(logoImageView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImageView.snp.makeConstraints({ item in
            item.height.equalTo(164)
            item.left.equalToSuperview().offset(40)
            item.right.equalToSuperview().offset(-40)
            item.center.equalToSuperview()
        })
    }
}
