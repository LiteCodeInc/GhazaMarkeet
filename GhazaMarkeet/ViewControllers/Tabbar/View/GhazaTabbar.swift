//
//  GhazaTabbar.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import UIKit

class GhazaTabbar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        roundTopCorner()
        addControllers()
    }

    func roundTopCorner() {
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.cornerRadius = 20
        self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        self.tabBar.tintColor = UIColor(named: "Theam")
        self.tabBar.backgroundColor = UIColor(named: "Tabbar")
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 2
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.3
    }
    
    func addControllers() {
        
        let homeVC = AddChilds(controller: HomeVC(), title: "Home".localized(), image: "Home", selectedImage: "HomeFill")
        homeVC.navigationController?.navigationBar.isHidden = true
        let homeNav = UINavigationController(rootViewController: homeVC)
        
        let boost = AddChilds(controller: CategoriesVC(), title: "Categories".localized(), image: "Categories", selectedImage: "CategoriesFill")
        boost.navigationController?.navigationBar.isHidden = true
        let boostNav = UINavigationController(rootViewController: boost)
        
        let empower = AddChilds(controller: PodtAdVC(), title: "Post Ad".localized(), image: "PostAd", selectedImage: "PostAd")
        let empowerNav = UINavigationController(rootViewController: empower)
        
        let unstopable = AddChilds(controller: ChatListVC(), title: "Chat".localized(), image: "Chat", selectedImage: "ChatFill")
        let unstopableNav = UINavigationController(rootViewController: unstopable)
        
        let setting = AddChilds(controller: ProfileVC(), title: "Profile".localized(), image: "Profile", selectedImage: "ProfileFill")
        let settingNav = UINavigationController(rootViewController: setting)
        
        self.viewControllers = [homeNav,boostNav,empowerNav,unstopableNav,settingNav]
        
    }
    
    func AddChilds(controller:UIViewController,title:String,image:String,selectedImage:String) -> UIViewController {
        let item1 = UITabBarItem(title: title, image: UIImage(named: image), tag: 0)
        item1.selectedImage = UIImage(named: selectedImage)
        controller.tabBarItem = item1
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(named: "TabbarUnselected")!], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(named: "Theam")!], for: .selected)
        return controller
    }
}
