//
//  SearchModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 23/02/2023.
//

import Foundation

class SearchModel: Codable {
    
    var searchTags: [SearchTags] = []
    var adsData: [MyAdsModel] = []
    var isFilterShow = false
    
    init() {
        
        searchTags = [
            SearchTags(searchType: "Mobile"),
            SearchTags(searchType: "Smart Watch"),
        ]
        
        adsData = [
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung".localized(), location: "Islamabad".localized(), date: "15 Feb", price: 300, isShowOptionBtn: false, isShowOption: false)
        ]
    }
    
}


class SearchTags: Codable {
    
    var searchType:String
    
//    init(){}
    
    init(searchType:String) {
        self.searchType = searchType
    }
    
}
