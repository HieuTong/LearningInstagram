//
//  UIMaker.swift
//  Instagram
//
//  Created by HieuTong on 2/18/21.
//  Copyright © 2021 Nicolas Desormiere. All rights reserved.
//

import UIKit

let appDelegate = UIApplication.shared.delegate as! AppDelegate
var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

struct UIMaker {
    static func makeKeyboardDoneView(title: String = "Done") -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 35))
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.setTitleColor(.color(value: 3), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)

        button.addTarget(appDelegate, action: #selector(appDelegate.hideKeyboard), for: .touchUpInside)
        view.addSubview(button)
        
        button.right(toView: view, space: -30)
        button.centerY(toView: view)

        view.backgroundColor = .color(value: 235)
        return view
    }
}
