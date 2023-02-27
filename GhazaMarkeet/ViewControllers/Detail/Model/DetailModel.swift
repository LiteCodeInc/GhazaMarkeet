//
//  DetailModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 27/02/2023.
//

import Foundation

class DetailModel: Codable {
    
    var adsData: [MyAdsModel] = []
    
    init() {
        
        adsData = [
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung", location: "Islamabad", date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung", location: "Islamabad", date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung", location: "Islamabad", date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung", location: "Islamabad", date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false)
        ]
        
    }
    
}
