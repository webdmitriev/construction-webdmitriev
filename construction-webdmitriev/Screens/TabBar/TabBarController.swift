//
//  TabBarController.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 05.03.2025.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.tintColor = .appBlack
        self.tabBar.backgroundColor = .appWhite
        self.tabBar.unselectedItemTintColor = .lightGray
        
        setupTabs()
    }
    
    private func setupTabs() {
        let mainVC = self.createNavBar(title: "Главная", image: UIImage(systemName: "house"), vc: MainViewController())
        let searchVC = self.createNavBar(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), vc: SearchViewController())
        let favoriteVC = self.createNavBar(title: "Избранное", image: UIImage(systemName: "star"), vc: FavoriteViewController())
        let servicesVC = self.createNavBar(title: "Услуги", image: UIImage(named: "services-icon"), vc: ServicesViewController())
        
        self.setViewControllers([mainVC, searchVC, favoriteVC, servicesVC], animated: true)
    }
    
    private func createNavBar(title: String, image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        return nav
    }
    
}
