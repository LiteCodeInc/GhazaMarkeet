//
//  Ex-UICollectionView.swift
//  ERide
//
//  Created by Mapple.pk on 16/02/2023.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func setupCollectionViewLayout(spacingIphone:CGFloat, spacingIpad:CGFloat) {
        
        let layout = UICollectionViewFlowLayout()
        if UIDevice.current.userInterfaceIdiom == .phone{
            layout.sectionInset = UIEdgeInsets(top: spacingIphone, left: spacingIphone, bottom: spacingIphone, right: spacingIphone)
            layout.minimumLineSpacing = spacingIphone
            layout.minimumInteritemSpacing = spacingIphone
        } else {
            layout.sectionInset = UIEdgeInsets(top: spacingIpad, left: spacingIpad, bottom: spacingIpad, right: spacingIpad)
            layout.minimumLineSpacing = spacingIpad
            layout.minimumInteritemSpacing = spacingIpad
        }
        self.collectionViewLayout = layout
    }
    
}
