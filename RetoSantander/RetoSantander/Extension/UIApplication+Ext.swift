//
//  UIApplication+Ext.swift
//  RetoSantander
//
//  Created by José Ignacio Sanz García on 19/10/2017.
//  Copyright © 2017 Accenture, S.L. All rights reserved.
//

import Foundation
import UIKit


extension UIApplication {
    
    static func topViewController(base: UIViewController? = UIApplication.shared.delegate?.window??.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return topViewController(base: selected)
        }
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        
        return base
    }
}
