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
    
    weak var pageIndex: Observable <Int>!
    
    let swipeRight = UISwipeGestureRecognizer()
    let swipeLeft = UISwipeGestureRecognizer()
    
    lazy var jackView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var jackOldCardView: JackOldView = {
        let view = JackOldView()
        view.backgroundColor = .yellowJack
        return view
    }()
    
    lazy var gentlemanCardView: GentlemanView = {
        let view = GentlemanView()
        view.backgroundColor = .grayJack
        return view
    }()
    
    lazy var singleCardView: SingleView = {
        let view = SingleView()
        view.backgroundColor = .grayJack
        return view
    }()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        swipes()
        
        addSubview(jackView)
        jackView.addSubview(singleCardView)
        jackView.addSubview(gentlemanCardView)
        jackView.addSubview(jackOldCardView)
        
        jackView.snp.makeConstraints({ item in
            item.height.equalTo(800)
            item.width.equalToSuperview()
            item.centerX.equalToSuperview()
            item.top.equalTo(safeAreaLayoutGuide.snp.top).offset(50)
        })
        
        singleCardView.snp.makeConstraints({ item in
            item.height.equalToSuperview()
            item.width.equalToSuperview()
            item.centerX.equalToSuperview()
            item.top.equalToSuperview()
        })
        
        jackOldCardView.snp.makeConstraints({ item in
            item.height.equalToSuperview()
            item.width.equalToSuperview()
            item.centerX.equalToSuperview()
            item.top.equalToSuperview()
        })
        
        gentlemanCardView.snp.makeConstraints({ item in
            item.height.equalToSuperview()
            item.width.equalToSuperview()
            item.centerX.equalToSuperview()
            item.top.equalToSuperview()
        })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func swipes() {
        
        self.jackView.addGestureRecognizer(swipeRight)
        self.jackView.addGestureRecognizer(swipeLeft)
        
        swipeRight.direction = .right
        swipeLeft.direction = .left
        
        swipeRight.addTarget(self, action: #selector(swipe))
        swipeLeft.addTarget(self, action: #selector(swipe))
        
    }
    
    @objc func swipe(sender: UISwipeGestureRecognizer){
        
        switch sender.direction {
        case .left:
            pageIndex.value += 1
            if pageIndex.value > 2 {
                pageIndex.value = 0
            }
        case .right:
            pageIndex.value -= 1
            if pageIndex.value < 0 {
                pageIndex.value = 2
            }
        default:
            break
        }

        showPage()
    }
    
    func showPage(){
        
        switch pageIndex.value {
        case 0:
            UIView.animate(withDuration: 0.5, animations:{
                self.gentlemanCardView.alpha = 1
                self.jackOldCardView.alpha = 0
                self.singleCardView.alpha = 0
            })
        case 1:
            UIView.animate(withDuration: 0.5, animations:{
                self.gentlemanCardView.alpha = 0
                self.jackOldCardView.alpha = 1
                self.singleCardView.alpha = 0
            })
        case 2:
            UIView.animate(withDuration: 0.5, animations:{
                self.gentlemanCardView.alpha = 0
                self.jackOldCardView.alpha = 0
                self.singleCardView.alpha = 1
            })
        default:
            ()
        }
    }
}
