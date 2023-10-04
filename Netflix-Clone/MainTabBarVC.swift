//
//  ViewController.swift
//  Netflix-Clone
//
//  Created by Smart Solar Nepal on 19/09/2023.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed

        //        Assigning navigation

        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpCommingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadViewController())

        //Assigning the tabbar its image and title
        vc1.tabBarItem.image = UIImage(systemName: "house.fill")
        vc1.title = "Home"

        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc2.title = "Comming Soon"

        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass.circle.fill")
        vc3.title = "Top Search"

        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line.circle.fill")
        vc4.title = "Downloads"

        setViewControllers([vc1,vc2,vc3,vc4], animated: true)

        tabBar.tintColor = .label

    }
}

