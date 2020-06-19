//
//  Observable.swift
//  JACK_DANIELS
//
//  Created by Татьяна Севостьянова on 19.06.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

class Observable<Type> {
    
    typealias Callback = (Type)->Void
     
    private var subscriptions: [Callback] = []
    
    var value: Type {
        didSet {
            notify(value: value)
        }
    }
    
    
    init(_ value: Type) {
        self.value = value
    }
    
    private func notify(value: Type) {
        subscriptions.forEach {
            $0(value)
        }
    }
    
    func subscribe(_ callback: @escaping Callback) {
        subscriptions.append(callback)
        notify(value: value)
    }
    
}
