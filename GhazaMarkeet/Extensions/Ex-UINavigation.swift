//
//  Ex-UINavigation.swift
//  ERide
//
//  Created by Mapple.pk on 14/02/2023.
//

import Foundation
import UIKit

extension UINavigationController {
    
    func popToViewController(ofClass: AnyClass, animated: Bool = true) {
        if let vc = viewControllers.last(where: { $0.isKind(of: ofClass) }) {
            popToViewController(vc, animated: animated)
        }
    }
//    
//    func setupNavigation() {
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithOpaqueBackground()
//        appearance.backgroundColor = lightBlack
//        
//        let titleAttribute = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .medium), NSAttributedString.Key.foregroundColor: white]
//        appearance.titleTextAttributes = titleAttribute
//        
//        self.navigationBar.standardAppearance = appearance
//        self.navigationBar.scrollEdgeAppearance = appearance
//        self.navigationBar.tintColor = white
//        self.navigationBar.isHidden = true
//        self.interactivePopGestureRecognizer?.isEnabled = false
//    }
}
