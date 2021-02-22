//
//  NSObject.swift
//  LearningInstagram
//
//  Created by HieuTong on 2/18/21.
//

import Foundation

extension NSObject {
    class var nameOfClass: String {
        var name = "Unknown Class"
        if let theName = NSStringFromClass(self).components(separatedBy: ".").last {
            name = theName
        }
        return name
    }
    
    var nameOfClass: String {
        return type(of: self).nameOfClass
    }
}
