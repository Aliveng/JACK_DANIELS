//
//  JackView.swift
//  JACK_DANIELS
//
//  Created by Татьяна Севостьянова on 08.06.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit


class JackView: UIView {
    
    lazy var jackOldCardView: JackOldView = {
        let view = JackOldView()
        view.backgroundColor = .clear
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.clear.cgColor
        return view
    }()
    
    enum Children {
        case gentleman
        case jackOld
        case single
    }
    
    func showChild(childName: Children){
        
        switch childName {
        case .gentleman:
            UIView.animate(withDuration: 0.5, animations:{
                self.jackOldCardView.alpha = 1
                
            })
        case .jackOld:
            UIView.animate(withDuration: 0.5, animations:{
                self.jackOldCardView.alpha = 0
                
            })
        case .single:
            UIView.animate(withDuration: 0.5, animations:{
                self.jackOldCardView.alpha = 0
                
            })
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(jackOldCardView)
        
        jackOldCardView.snp.makeConstraints({ item in
           // item.height.equalTo(700)
            item.height.equalToSuperview()
            item.width.equalToSuperview()
            item.centerX.equalToSuperview()
            item.top.equalToSuperview()
        })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func didTouch(target: UISegmentedControl) {
        print(target.selectedSegmentIndex)
        
        switch target.selectedSegmentIndex {
        case 0:
            showChild(childName: .gentleman)
        case 1:
            showChild(childName: .jackOld)
        case 2:
            showChild(childName: .single)
        default:
            break
        }
    }
}
