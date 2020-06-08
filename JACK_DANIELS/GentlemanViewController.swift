//
//  ViewController.swift
//  JACK_DANIELS
//
//  Created by Татьяна Севостьянова on 06.06.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit

class GentlemanViewController: UIViewController {
    
    lazy var logoImageView: UIImageView = {
        let view = UIImageView(image: .logo)
        view.setImageColor(color: .black)
        return view
    }()
    
    lazy var arrowBackButton: UIButton = {
        let view = UIButton()
        view.setImage(.backArrow, for: .normal)
        view.tintColor = .grayJack
        view.backgroundColor = .yellowJack
        view.addTarget(self,
                       action: #selector(didTapArrowBack),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var heartButton: UIButton = {
        let view = UIButton()
        view.setImage(.heart, for: .normal)
        view.tintColor = .grayJack
        view.backgroundColor = .yellowJack
        view.addTarget(self,
                       action: #selector(didTaHeart),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var jackCardView: JackView = {
        let view = JackView()
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var buyButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .yellowJack
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 18
        view.setTitle("BUY NOW", for: .normal)
        view.titleLabel?.font = .boldSystemFont(ofSize: 12)
        view.setTitleColor( .black, for: .normal)
        view.addTarget(self,
                       action: #selector(didTaHeart),
                       for: .touchUpInside)
        return view
    }()
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .yellowJack
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logoImageView)
        view.addSubview(arrowBackButton)
        view.addSubview(heartButton)
        view.addSubview(jackCardView)
        view.addSubview(buyButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImageView.snp.makeConstraints({ item in
            item.height.equalTo(40)
            item.width.equalTo(70)
            item.centerX.equalToSuperview()
            item.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(18)
        })
        
        arrowBackButton.snp.makeConstraints({ item in
            item.height.equalTo(22)
            item.width.equalTo(22)
            item.left.equalToSuperview().offset(16)
            item.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(22)
        })
        
        heartButton.snp.makeConstraints({ item in
            item.height.equalTo(20)
            item.width.equalTo(22)
            item.right.equalToSuperview().offset(-16)
            item.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(22)
        })
        
        jackCardView.snp.makeConstraints({ item in
            item.height.equalTo(800)
            item.width.equalToSuperview()
            item.centerX.equalToSuperview()
            item.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
        })
        
        buyButton.snp.makeConstraints({ item in
            item.height.equalTo(35)
            item.width.equalTo(145)
            item.centerX.equalToSuperview()
            item.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-70)
        })
    }
    
    @objc
    private func didTaHeart() {
        print("Понравился")
    }
    
    @objc
    private func didTapArrowBack() {
        navigationController?.popViewController(animated: true)
    }
    
}

