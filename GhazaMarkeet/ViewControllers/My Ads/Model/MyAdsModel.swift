//
//  MyAdsModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 22/02/2023.
//

import Foundation


class MyAdsModel: Codable {
    
    var thumbnail = String()
    var adTitle = String()
    var location = String()
    var date = String()
    var price = Int()
    var isShowOptionBtn = Bool()
    var isShowOption = Bool()
    
    
    init() {}
    
    init(thumbnail: String, adTitle: String, location: String, date: String, price:Int, isShowOptionBtn: Bool, isShowOption: Bool) {
        self.thumbnail = thumbnail
        self.adTitle =  adTitle
        self.location =  location
        self.date =  date
        self.price =  price
        self.isShowOptionBtn = isShowOptionBtn
        self.isShowOption = isShowOption
    }
    
}
