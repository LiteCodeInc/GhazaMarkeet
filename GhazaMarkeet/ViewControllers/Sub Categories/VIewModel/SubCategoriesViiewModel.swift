//
//  SubCategoriesViiewModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 23/02/2023.
//

import Foundation

class SubCategoriesPresenter: NSObject {
    
    //VARIABLE'S
    var categories = [CetegoryModel]()
    
    override init() {
        
        categories = [
            CetegoryModel(type: "Furnitures", icon: "Furnitures"),
            CetegoryModel(type: "Cars", icon: "Cars"),
            CetegoryModel(type: "Mobiles", icon: "Mobiles")
        ]
    }
    
}
