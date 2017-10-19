//
//  UserDefaultService.swift
//  RetoSantander
//
//  Created by iOSDev2 on 18/10/2017.
//  Copyright © 2017 Accenture, S.L. All rights reserved.
//


import UIKit

class UserDefaultService {
        
    static func saveData(info: String, key: String) {
        let defaults =  UserDefaults.standard
        defaults.setValue(info, forKey: key)
    }
    
    static func getData(key:String) -> String {
        let defaults = UserDefaults.standard
        if let info = defaults.string(forKey: key) {
            return info
        }
        return String()
    }
    
    static func removeData(key: String) {
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: key)
    }
}
