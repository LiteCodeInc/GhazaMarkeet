//
//  CategoriesModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 23/02/2023.
//

import Foundation

//MARK: CATEGORY MODEL

class CetegoryModel:Codable {
    var type = String()
    var icon = String()
    
    init(type:String, icon:String) {
        self.type = type
        self.icon = icon
    }
}
