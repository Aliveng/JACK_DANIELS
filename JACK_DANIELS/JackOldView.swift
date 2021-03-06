//
//  RoomsOnFloorView.swift
//  FloorsView
//
//  Created by Татьяна Севостьянова on 23.03.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit


class JackOldView: UIView {
    
    lazy var costLabel: UILabel = {
        let view = UILabel()
        view.text = "$539"
        view.textColor = .black
        view.font = .boldSystemFont(ofSize: 16)
        view.textAlignment = .left
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let view = UILabel()
        view.text = "JACK DANIEL’S OLD N0.7"
        view.textColor = .black
        view.font = view.font.withSize(24)
        view.textAlignment = .left
        view.numberOfLines = 0
        return view
    }()
    
    lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.text = "We do things a little differently around here – and that’s what gives Jack Daniel’s its distinctive character. We charcoal mellow our whiskey drop by drop, then let it age in our own handcrafted barrels. And we don’t follow a calendar."
        view.textColor = .black
        view.font = view.font.withSize(12)
        view.textAlignment = .left
        view.numberOfLines = 0
        view.setLineHeight(lineHeight: 1.5)
        return view
    }()
    
    lazy var backLabel: UILabel = {
        let view = UILabel()
        view.text = "JACK DANIEL’S WHISKE"
        view.textColor = #colorLiteral(red: 0.8565072417, green: 0.6234254837, blue: 0.001795589807, alpha: 1)
        view.font = .boldSystemFont(ofSize: 147)
        view.textAlignment = .left
        view.numberOfLines = 1
        return view
    }()
    
    lazy var unchangedLabel: UILabel = {
        let view = UILabel()
        view.text = "JACK DANIEL’S WHISKE"
        view.textColor = .white
        view.font = .boldSystemFont(ofSize: 10)
        view.textAlignment = .left
        return view
    }()
    
    lazy var bottleImageView: UIImageView = {
        let view = UIImageView(image: .jackDanielsOld)
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
                       action: #selector(didTapHearBuy),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var pageControlView: UIPageControl = {
        let view = UIPageControl()
        view.pointOneView.backgroundColor = #colorLiteral(red: 0.8862358928, green: 0.7452564836, blue: 0.3547067344, alpha: 1)
        view.pointTwoView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.pointThreeView.backgroundColor = #colorLiteral(red: 0.8862358928, green: 0.7452564836, blue: 0.3547067344, alpha: 1)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(costLabel)
        addSubview(nameLabel)
        addSubview(backLabel)
        addSubview(descriptionLabel)
        addSubview(unchangedLabel)
        addSubview(bottleImageView)
        addSubview(buyButton)
        addSubview(pageControlView)
        
        costLabel.snp.makeConstraints({ item in
            item.width.equalTo(150)
            item.left.equalToSuperview().offset(16)
            item.top.equalToSuperview().offset(80)
        })
        
        nameLabel.snp.makeConstraints({ item in
            item.width.equalTo(200)
            item.left.equalToSuperview().offset(16)
            item.top.equalTo(costLabel.snp.bottom).offset(7)
        })
        
        backLabel.snp.makeConstraints({ item in
            item.width.equalTo(600)
            item.left.equalToSuperview().offset(-45)
            item.top.equalTo(nameLabel.snp.bottom).offset(50)
        })
        
        descriptionLabel.snp.makeConstraints({ item in
            item.width.equalTo(200)
            item.left.equalToSuperview().offset(16)
            item.top.equalTo(nameLabel.snp.bottom).offset(10)
        })
        
        unchangedLabel.snp.makeConstraints({ item in
            item.width.equalTo(200)
            item.left.equalToSuperview().offset(16)
            item.top.equalTo(descriptionLabel.snp.bottom).offset(10)
        })
        
        bottleImageView.snp.makeConstraints({ item in
            item.height.equalTo(320)
            item.width.equalTo(150)
            item.right.equalToSuperview()
            item.top.equalToSuperview().offset(60)
        })
        
        buyButton.snp.makeConstraints({ item in
            item.height.equalTo(35)
            item.width.equalTo(145)
            item.centerX.equalToSuperview()
            item.bottom.equalTo(bottleImageView.snp.bottom).offset(70)
        })
        
        pageControlView.snp.makeConstraints({ item in
            item.height.equalTo(50)
            item.width.equalTo(300)
            item.centerX.equalToSuperview()
            item.top.equalTo(buyButton.snp.bottom).offset(10)
        })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func didTapHearBuy() {
        print("Положить в корзину")
    }
}
