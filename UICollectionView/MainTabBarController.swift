//
//  ViewController.swift
//  UITabBarController
//
//  Created by Apple on 4/29/19.
//  Copyright © 2019 Monkey iDesign. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let layout = UICollectionViewFlowLayout()
        let userProController = UserProHeaderController(collectionViewLayout: layout)
        let navController = UINavigationController(rootViewController: userProController)
        
        navController.tabBarItem.image = UIImage(named: "profile_unselected")
        navController.tabBarItem.selectedImage = UIImage(named: "profile_selected")
        
        tabBar.tintColor = .black
        //test
        viewControllers = [navController, UIViewController()]
    }
    
}

