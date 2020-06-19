//
//  AppDelegate.swift
//  JACK_DANIELS
//
//  Created by Татьяна Севостьянова on 06.06.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var pageIndex: Observable <Int> = .init(1)
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        self.window = window
        
        window.rootViewController = UINavigationController(rootViewController: JackViewController(pageIndex: pageIndex))
        window.makeKeyAndVisible()
        
        return true
    }
}
