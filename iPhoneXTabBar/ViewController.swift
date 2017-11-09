//
//  ViewController.swift
//  iPhoneXTabBar
//
//  Created by SaitoYuta on 2017/11/09.
//  Copyright © 2017年 bangohan. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        setViewControllers([UINavigationController.init(rootViewController: ViewController.init())], animated: true)
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton.init()
        button.setTitle("push", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.sizeToFit()
        button.center = view.center
        view.addSubview(button)
        view.backgroundColor = .white
        button.addTarget(self, action: #selector(push), for: .touchUpInside)
    }

    @objc func push() {
        let toVC = UIViewController.init()
        toVC.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(toVC, animated: true)
    }
}

