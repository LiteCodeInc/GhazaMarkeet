//
//  CategoriesViewModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 23/02/2023.
//

import Foundation

class CategoriesPresenter: NSObject {
    
    //VARIABLE'S
    var categories = [CetegoryModel]()
    
    override init() {
        
        categories = [
            CetegoryModel(type: "Furnitures", icon: "Furnitures"),
            CetegoryModel(type: "Cars", icon: "Cars"),
            CetegoryModel(type: "Mobiles", icon: "Mobiles"),
            CetegoryModel(type: "Electronics", icon: "Electronics"),
            CetegoryModel(type: "Watches", icon: "Watches"),
            CetegoryModel(type: "Tools", icon: "Tools"),
            CetegoryModel(type: "Bicycles", icon: "Bicycles"),
            CetegoryModel(type: "Spare Parts", icon: "Spare Parts"),
            CetegoryModel(type: "Laptops", icon: "Laptops")
        ]
    }
    
}
