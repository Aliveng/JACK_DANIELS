//
//  ViewController.swift
//  JACK_DANIELS
//
//  Created by Татьяна Севостьянова on 06.06.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit

class JackViewController: UIViewController {
    
    weak var pageIndex: Observable <Int>!
    
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
                       action: #selector(didTapHeart),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var jackCardView: JackView = {
        let view = JackView()
        view.backgroundColor = .clear
        return view
    }()
    
    enum СolorOfTopBar {
        case grayJack
        case yellowJack
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    init(pageIndex: Observable <Int>) {
        self.pageIndex = pageIndex
        super.init(nibName: nil, bundle: nil)
        jackCardView.pageIndex = pageIndex
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .yellowJack
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logoImageView)
        view.addSubview(arrowBackButton)
        view.addSubview(heartButton)
        view.addSubview(jackCardView)
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
        
        pageIndex.subscribe({ index in
            
            switch index{
            case 0:
                self.view.backgroundColor = .grayJack
                self.arrowBackButton.tintColor = .yellowJack
                self.arrowBackButton.backgroundColor = .grayJack
                self.heartButton.tintColor = .yellowJack
                self.heartButton.backgroundColor = .grayJack
                self.logoImageView.tintColor = .white
            case 1:
                self.view.backgroundColor = .yellowJack
                self.arrowBackButton.tintColor = .black
                self.arrowBackButton.backgroundColor = .yellowJack
                self.heartButton.tintColor = .black
                self.heartButton.backgroundColor = .yellowJack
                self.logoImageView.tintColor = .black
            case 2:
                self.view.backgroundColor = .grayJack
                self.arrowBackButton.tintColor = .yellowJack
                self.arrowBackButton.backgroundColor = .grayJack
                self.heartButton.tintColor = .yellowJack
                self.heartButton.backgroundColor = .grayJack
                self.logoImageView.tintColor = .white
            default:
                ()
            }
        })
    }
    
    @objc
    private func didTapHeart() {
        print("Понравился")
    }
    
    @objc
    private func didTapArrowBack() {
        navigationController?.popViewController(animated: true)
    }
}
