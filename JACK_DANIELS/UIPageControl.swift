//
//  UIPageControl.swift
//  JACK_DANIELS
//
//  Created by Татьяна Севостьянова on 09.06.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit


class UIPageControl: UIView {

    lazy var pointOneView: UIView = {
        let point = UIView()
        point.backgroundColor = #colorLiteral(red: 1, green: 0.8398494124, blue: 0.4019361734, alpha: 1)
      //  point.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        point.layer.cornerRadius = 2
        return point
    }()
    
    lazy var pointTwoView: UIView = {
        let point = UIView()
        point.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
     //   point.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
     //   point.layer.borderWidth = 1
        point.layer.cornerRadius = 2
        return point
    }()
    
    lazy var pointThreeView: UIView = {
        let point = UIView()
        point.backgroundColor = #colorLiteral(red: 1, green: 0.8398494124, blue: 0.4019361734, alpha: 1)
        point.layer.cornerRadius = 2
        return point
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(pointOneView)
        addSubview(pointTwoView)
        addSubview(pointThreeView)
        
        pointTwoView.snp.makeConstraints({ item in
            item.height.equalTo(3)
            item.width.equalTo(16)
            item.top.equalToSuperview().offset(25)
            item.centerX.equalToSuperview()
        })
        
        pointOneView.snp.makeConstraints({ item in
            item.height.equalTo(3)
            item.width.equalTo(16)
            item.top.equalToSuperview().offset(25)
            item.centerX.equalToSuperview().offset(25)
        })

        pointThreeView.snp.makeConstraints({ item in
            item.height.equalTo(3)
            item.width.equalTo(16)
            item.centerX.equalToSuperview().offset(-25)
            item.top.equalToSuperview().offset(25)
        })
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
