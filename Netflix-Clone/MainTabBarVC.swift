//
//  ViewController.swift
//  Netflix-Clone
//
//  Created by Smart Solar Nepal on 19/09/2023.
//

import UIKit

class MainTabBarVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed

        let vc1 = UINavigationController(rootViewController: HomeViewController)
        let vc2 = UINavigationController(rootViewController: UpCommingViewController)
        let vc3 = UINavigationController(rootViewController: SearchViewController)
        let vc4 = UINavigationController(rootViewController: DownloadViewController)
    }

view
}

