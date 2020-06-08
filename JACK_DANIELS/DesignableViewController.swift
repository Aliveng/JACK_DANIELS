//
//  DesignableViewController.swift
//  JACK_DANIELS
//
//  Created by Татьяна Севостьянова on 08.06.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit

@IBDesignable
class DesignableViewController: UIViewController { // попытка изменить цвет статус бару - можно удалить если не хочется доделать

    @IBInspectable var LightStatusBar: Bool = false

    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            if LightStatusBar {
                return UIStatusBarStyle.lightContent
            } else {
                return UIStatusBarStyle.default
            }
        }
    }
}
