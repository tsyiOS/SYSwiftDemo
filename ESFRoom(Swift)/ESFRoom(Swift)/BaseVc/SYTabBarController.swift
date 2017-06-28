//
//  SYTabBarController.swift
//  ESFRoom(Swift)
//
//  Created by leju_esf on 2017/6/27.
//  Copyright © 2017年 tsy. All rights reserved.
//

import UIKit

class SYTabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        let homeVc = SYHomeViewController(nibName:NSStringFromClass(SYHomeViewController.self).components(separatedBy: ".").last!, bundle: nil)
        homeVc.title = "首页"
        let nav = SYNavigationController(rootViewController: homeVc)
        addChildViewController(nav)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor.lightGray
        view.backgroundColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
