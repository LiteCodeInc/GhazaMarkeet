//
//  HomeModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 22/02/2023.
//

import Foundation

class HomeModel: Codable {
    
    var categories = [CetegoryModel]()
    var adsData: [MyAdsModel] = []
    
    init() {
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
        
        adsData = [
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false)
        ]
        
    }
    
}

