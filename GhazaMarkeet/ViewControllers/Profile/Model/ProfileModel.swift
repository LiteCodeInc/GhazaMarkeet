//
//  ProfileModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import Foundation

class ProfileModel: Codable {
    
    var itemImage = String()
    var itemTitle = String()
    var titleColor = String()
    
    init() {
    }
    
    init(itemImage: String, itemTitle: String, titleColor: String) {
        
        self.itemImage = itemImage
        self.itemTitle = itemTitle
        self.titleColor = titleColor
        
    }
    
}
