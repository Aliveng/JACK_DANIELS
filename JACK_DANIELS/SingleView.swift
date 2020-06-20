//
//  SingleView.swift
//  JACK_DANIELS
//
//  Created by Татьяна Севостьянова on 19.06.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit


class SingleView: UIView {
    
    lazy var costLabel: UILabel = {
        let view = UILabel()
        view.text = "$825"
        view.textColor = .yellowJack
        view.font = .boldSystemFont(ofSize: 16)
        view.textAlignment = .left
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let view = UILabel()
        view.text = "SINGLE BARREL"
        view.textColor = .white
        view.font = view.font.withSize(24)
        view.textAlignment = .left
        view.numberOfLines = 0
        return view
    }()
    
    lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.text = "We hold ourselves to the highest standard when crafting and selecting Jack Daniel’s Single Barrel. In fact, just one out of every 100 barrels is set aside to mature in the highest reaches of our barrelhouses."
        view.textColor = .white
        view.font = view.font.withSize(12)
        view.textAlignment = .left
        view.numberOfLines = 0
        view.setLineHeight(lineHeight: 1.5)
        return view
    }()
    
    lazy var backLabel: UILabel = {
        let view = UILabel()
        view.text = "SINGLE"
        view.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.font = .boldSystemFont(ofSize: 147)
        view.textAlignment = .left
        view.numberOfLines = 1
        return view
    }()
    
    lazy var unchangedLabel: UILabel = {
        let view = UILabel()
        view.text = "JACK DANIEL’S WHISKE"
        view.textColor = .grayForLabel
        view.font = .boldSystemFont(ofSize: 10)
        view.textAlignment = .left
        return view
    }()
    
    lazy var bottleImageView: UIImageView = {
        let view = UIImageView(image: .singleBarrel)
        return view
    }()
    
    lazy var buyButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .grayJack
        view.layer.borderColor = UIColor.yellowJack.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 18
        view.setTitle("BUY NOW", for: .normal)
        view.titleLabel?.font = .boldSystemFont(ofSize: 12)
        view.setTitleColor( .yellowJack, for: .normal)
        view.addTarget(self,
                       action: #selector(didTapHearBuy),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var pageControlView: UIPageControl = {
        let view = UIPageControl()
        view.pointOneView.backgroundColor = #colorLiteral(red: 0.396032095, green: 0.3961050212, blue: 0.3960274756, alpha: 1)
        view.pointTwoView.backgroundColor = #colorLiteral(red: 0.396032095, green: 0.3961050212, blue: 0.3960274756, alpha: 1)
        view.pointThreeView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
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
            item.right.equalToSuperview().offset(-5)
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
